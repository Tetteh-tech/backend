<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class UserController extends Controller
{
  public function register(Request $request)
{
    $request->validate([
        'name' => 'required|string',
        'email' => [
            'required',
            'email',
            Rule::unique('users')->whereNull('deleted_at') // Only check non-deleted users
        ],
        'password' => 'required|string|min:6',
    ]);

    // Check if a soft-deleted user exists with this email
    $trashedUser = User::onlyTrashed()->where('email', $request->email)->first();

    if ($trashedUser) {
        // Restore the existing user instead of creating new one
        $trashedUser->restore();
        $trashedUser->update([
            'name' => $request->name,
            'password' => Hash::make($request->password),
        ]);

        Auth::login($trashedUser);

        return response()->json(['message' => 'Account restored successfully']);
    }

    // Create new user if no soft-deleted match exists
    $user = User::create([
        'name' => $request->name,
        'email' => $request->email,
        'password' => Hash::make($request->password),
        'user_type' => User::REGULAR_USER,
    ]);

    Auth::login($user);

    return response()->json(['message' => 'Registration successful']);
}
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

        if (!Auth::attempt($credentials)) {
            return response()->json([
                'message' => 'Invalid credentials',
                'errors' => ['password' => 'The email or password you entered is incorrect.']
            ], 401);
        }

        $token = $request->user()->createToken('api-token')->plainTextToken;
        
        return response()->json([
            'message' => 'Login successful',
            'token' => $token,
            'user' => $request->user()
        ]);
    }

    public function logout()
    {
        Auth::logout();
        return response()->json(['message' => 'Logged out']);
    }

    public function user(Request $request)
    {
        return $request->user();
    }

    public function edit(Request $request)
    {
        $user = $request->user();
        
        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|string|max:255',
            'email' => 'sometimes|email|unique:users,email,'.$user->id,
            // 'password' => 'sometimes|string|min:6',
            // 'avatar' => 'sometimes|image|mimes:jpeg,png,jpg,gif|max:2048',
            // 'current_password' => 'required_with:password|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Verify current password if changing password
        if ($request->has('password') && !Hash::check($request->current_password, $user->password)) {
            return response()->json([
                'message' => 'Current password is incorrect',
                'errors' => ['current_password' => 'The current password is incorrect']
            ], 422);
        }

        // Update user data
        $updateData = [];
        if ($request->has('name')) {
            $updateData['name'] = $request->name;
        }
        if ($request->has('email')) {
            $updateData['email'] = $request->email;
        }
        if ($request->has('password')) {
            $updateData['password'] = Hash::make($request->password);
        }

        // Handle avatar upload
        if ($request->hasFile('avatar')) {
            // Delete old avatar if exists
            if ($user->avatar) {
                Storage::delete($user->avatar);
            }
            
            $path = $request->file('avatar')->store('avatars');
            $updateData['avatar'] = $path;
        }

        $user->update($updateData);

        return response()->json([
            'message' => 'Profile updated successfully',
            'user' => $user
        ]);
    }

    public function destroy($id)
{
    try {
        if (!is_numeric($id)) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid user ID format'
            ], 400);
        }

        $userId = (int)$id;
        $currentUser = Auth::user();
        $userToDelete = User::find($userId);

        if (!$userToDelete) {
            return response()->json([
                'success' => false,
                'message' => 'User not found'
            ], 404);
        }

        // Authorization - only allow users to delete themselves
        if ($currentUser->id !== $userToDelete->id) {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized: You can only delete your own account'
            ], 403);
        }

        // Perform deletion
        $userToDelete->delete();

        // For API tokens (Sanctum), revoke the current token
        if (method_exists($currentUser, 'currentAccessToken')) {
            $currentUser->currentAccessToken()->delete();
        } 
        // For session-based auth
        else {
            Auth::guard('web')->logout();
            request()->session()->invalidate();
            request()->session()->regenerateToken();
        }

        return response()->json([
            'success' => true,
            'message' => 'User deleted successfully'
        ]);

    } catch (\Exception $e) {
        \Log::error('User deletion failed: ' . $e->getMessage());
        return response()->json([
            'success' => false,
            'message' => 'Server error during deletion',
            'error' => $e->getMessage()
        ], 500);
    }
}
// public function __construct()
// {
//     $this->middleware('auth:sanctum');
// }
}