<?php
namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\User;
use App\Models\Consultant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\Mail\ConsultantStatusNotification;

class ConsultantController extends Controller
{
    public function index()
    {
        $consultants = Consultant::orderBy('created_at', 'desc')->get();
        return response()->json($consultants);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:consultants,email',
            'phone' => 'required|string|max:20',
            'specialization' => 'required|string|max:255',
            'experience' => 'required|string',
            'cv' => 'required|file|mimes:pdf,doc,docx|max:2048',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $cvPath = $request->file('cv')->store('consultant_cvs', 'public');
        $imagePath = $request->file('image')->store('consultant_images', 'public');
         
        $consultant = Consultant::create([
            'user_id' => auth()->id(),
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'specialization' => $request->specialization,
            'experience' => $request->experience,
            'cv_path' => $cvPath,
            'status' => 'pending',
            'image_path' => $imagePath,
        ]);

        return response()->json([
            'message' => 'Application submitted successfully',
            'data' => $consultant,
        ], 201);
    }

    // public function show($id)
    // {
    //     $consultant = Consultant::findOrFail($id);
    //     return response()->json($consultant);
    // }

    public function edit($id)
    {
        $consultant = Consultant::findOrFail($id);
        return response()->json($consultant);
    }

    public function update(Request $request, $id)
{
    \DB::beginTransaction();
    try {
        $consultant = Consultant::findOrFail($id);
        
        // Validate input
        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|string|max:255',
            'email' => 'sometimes|email|unique:consultants,email,'.$consultant->$id,
            'phone' => 'sometimes|string|max:20',
            'specialization' => 'sometimes|string|max:255',
            'experience' => 'sometimes|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Prepare update data
        $updateData = $request->only([
            'name', 'email', 'phone', 'specialization', 'experience'
        ]);

        // Handle image upload
      if ($request->hasFile('image')) {
    // Delete old image if exists
    if ($consultant->image_path && file_exists(public_path($consultant->image_path))) {
        unlink(public_path($consultant->image_path));
    }

    $image = $request->file('image');
    $imageFilename = time() . '_' . $image->getClientOriginalName();

    // Move the new image to public/consultant_images
    $image->move(public_path('consultant_images'), $imageFilename);

    // Save relative path in DB
    $updateData['image_path'] = 'consultant_images/' . $imageFilename;
}


        // Update consultant
        $consultant->update($updateData);

        \DB::commit();

        return response()->json([
            'success' => true,
            'message' => 'Consultant updated successfully',
            'data' => $consultant->fresh()
        ]);

    } catch (\Exception $e) {
        \DB::rollBack();
        \Log::error("Consultant update failed: " . $e->getMessage());
        return response()->json([
            'success' => false,
            'message' => 'Failed to update consultant',
            'error' => $e->getMessage()
        ], 500);
    }
}

    public function approve($id)
    {
        \DB::beginTransaction();
        try {
            $consultant = Consultant::find($id);
            if (!$consultant) {
                return response()->json([
                    'success' => false,
                    'message' => 'Consultant not found',
                ], 404);
            }

            $user = User::where('id', $consultant->user_id)->first();
            if (!$user) {
                return response()->json([
                    'success' => false,
                    'message' => 'User not found with id: ' . $consultant->email,
                    'consultant_email' => $consultant->email,
                ], 404);
            }

            $user->user_type = 1;
            if (!$user->save()) {
                throw new \Exception('Failed to update user');
            }

            $consultant->status = 'approved';
            $consultant->reviewed_by = auth()->id();
            if (!$consultant->save()) {
                throw new \Exception('Failed to update consultant');
            }

            \DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Approved successfully',
                'user_id' => $user->id,
                'user_type_updated' => $user->user_type,
            ]);

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error("Approval failed: " . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Approval failed: ' . $e->getMessage(),
                'error_details' => $e->getTraceAsString(),
            ], 500);
        }
    }

    public function reject(Request $request, $id)
    {
        $request->validate([
            'rejection_reason' => 'required|string',
        ]);

        $consultant = Consultant::findOrFail($id);
        $consultant->update([
            'status' => 'rejected',
            'rejection_reason' => $request->rejection_reason,
            'reviewed_by' => auth()->id(),
        ]);

      

        return response()->json([
            'message' => 'Consultant rejected successfully',
            'data' => $consultant
        ]);
    }

    

     public function show($id)
    {
        try {
            $consultant = Consultant::findOrFail($id);
            
            return response()->json([
                'success' => true,
                'data' => $consultant
            ]);
            
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Consultant not found',
                'error' => $e->getMessage()
            ], 404);
        }
    }

    public function getByUser($user_id)
{
    $consultant = Consultant::where('user_id', $user_id)->first();

    if (!$consultant) {
        return response()->json(['message' => 'Consultant not found'], 404);
    }

    return response()->json(['data' => $consultant]);
}
/**
     * Delete consultant and revert user type
     *
     * @param  \App\Models\Consultant  $consultant
     * @return \Illuminate\Http\Response
     */
   // app/Http/Controllers/ConsultantController.php

public function destroy(Consultant $consultant)
{
    // Direct user type check
    if (auth()->user()->user_type !== 0) { // 3 = super admin
        return response()->json([
            'success' => false,
            'message' => 'Only super admins can delete consultants'
        ], 403);
    }

    DB::transaction(function () use ($consultant) {
        // Revert user type
        $consultant->user()->update(['user_type' => 2]); // 1 = regular user
        
        // Delete consultant record
        $consultant->delete();
    });

    return response()->json([
        'success' => true,
        'message' => 'Consultant deleted successfully'
    ]);
}
    
}