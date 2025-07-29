<?php
namespace App\Http\Controllers;

use App\Models\Rating;
use Illuminate\Http\Request;

class RatingController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'consultants_id' => 'required|exists:consultants,id',
            'blog_id' => 'nullable|exists:blogs,id',
            'rating' => 'required|integer|between:1,5',
          
        ]);
        
        $validated['user_id'] = auth()->id();
        
        // Check if user already rated this consultant/blog
        $existingRating = Rating::where('user_id', auth()->id())
            ->where('consultants_id', $validated['consultants_id'])
            ->when($validated['blog_id'], function($query, $blogId) {
                return $query->where('blog_id', $blogId);
            })
            ->first();
            
        if ($existingRating) {
            return response()->json([
                'message' => 'You have already rated this consultant/blog'
            ], 422);
        }
        
        $rating = Rating::create($validated);
        
        return response()->json($rating, 201);
    }
    // In your RatingController
public function checkExistingRating(Request $request)
{
    $userId = auth()->id();
    $consultantId = $request->consultant_id;
    $blogId = $request->blog_id;

    $rating = Rating::where('user_id', $userId)
        ->where('consultants_id', $consultantId)
        ->when($blogId, fn($q) => $q->where('blog_id', $blogId))
        ->first();

    return response()->json([
        'hasRated' => $rating !== null,
        'rating' => $rating ? $rating->rating : 0
    ]);
}
}