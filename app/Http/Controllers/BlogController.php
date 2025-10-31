<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    /**
     * Display a listing of the blogs.
     */
    public function index()
{
    $blogs = Blog::with(['consultant', 'ratings.user'])
                ->withAvg('ratings', 'rating')
                ->withCount('ratings')
                ->latest()
                ->get(); // Changed from paginate() to get()

    // Transform the data for frontend
    $transformedBlogs = $blogs->map(function ($blog) {
        return [
            'id' => $blog->id,
            'title' => $blog->title,
            'content' => $blog->content,
            'featured_image_url' => $blog->featured_image 
                ? Storage::disk('public')->url($blog->featured_image)
                : null,
            'created_at' => $blog->created_at,
            'consultants' => [$blog->consultant], // Wrap in array to match your interface
            'ratings' => $blog->ratings,
            'ratings_avg_rating' => $blog->ratings_avg_rating,
            'ratings_count' => $blog->ratings_count
        ];
    });

    return response()->json($transformedBlogs); // Direct array response
}

    /**
     * Store a newly created blog in storage.
     */
   public function store(Request $request)
{
    $user = $request->user();
    
    if (!$user) {
        return response()->json([
            'message' => 'Unauthenticated',
            'success' => false
        ], 401);
    }

    // Check if user has a consultant profile
    if (!$user->consultant) {
        return response()->json([
            'success' => false,
            'message' => 'Only registered consultants can create blogs'
        ], 403);
    }

    $validated = $request->validate([
        'title' => 'required|string|max:255',
        'content' => 'required|string',
        'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
    ]);

    try {
        $blog = new Blog();
        $blog->title = $validated['title'];
        $blog->content = $validated['content'];
        $blog->consultant_id = $user->consultant->id; // Use the ID from consultants table

       if ($request->hasFile('featured_image')) {
    $image = $request->file('featured_image');
    $imageFilename = time() . '_' . $image->getClientOriginalName();

    // Move the file to public/blog_images
    $image->move(public_path('blog_images'), $imageFilename);

    // Save the relative path
    $blog->featured_image = 'blog_images/' . $imageFilename;
}

        $blog->save();

        return response()->json([
            'success' => true,
            'data' => $blog->load('consultant'), // Eager load the consultant
            'message' => 'Blog created successfully'
        ], 201);

    } catch (\Exception $e) {
        \Log::error('Blog creation error: ' . $e->getMessage());
        return response()->json([
            'success' => false,
            'message' => 'Server Error: ' . $e->getMessage()
        ], 500);
    }
}

    /**
     * Display the specified blog.
     */
    public function show($id)
{
    $blog = Blog::with([
                'consultant', // singular since it's belongsTo
                'ratings.user',
                'ratings' => function($query) {
                    $query->latest()->take(5); // Get latest 5 ratings
                }
            ])
            ->withAvg('ratings', 'rating')
            ->withCount('ratings')
            ->findOrFail($id);

    // If you need to format the image URL
    if ($blog->featured_image) {
        $blog->featured_image_url = Storage::disk('public')->url($blog->featured_image);
    }

    return response()->json([
        'data' => $blog,
        'message' => 'Blog retrieved successfully'
    ]);
}

    /**
     * Update the specified blog in storage.
     */
    public function update(Request $request, $id)
    {
        $blog = Blog::findOrFail($id);

        // Authorization check - ensure the consultant owns the blog
        if (auth()->user()->consultant->id !== $blog->consultant_id) {
            return response()->json([
                'message' => 'Unauthorized to update this blog'
            ], 403);
        }

        $validated = $request->validate([
            'title' => 'sometimes|string|max:255',
            'content' => 'sometimes|string',
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);

        if ($request->hasFile('featured_image')) {
            // Delete old image if exists
            if ($blog->featured_image) {
                Storage::disk('public')->delete($blog->featured_image);
            }
            
            $path = $request->file('featured_image')->store('blog_images', 'public');
            $validated['featured_image'] = $path;
        }

        $blog->update($validated);

        return response()->json([
            'data' => $blog,
            'message' => 'Blog updated successfully'
        ]);
    }

    /**
     * Remove the specified blog from storage.
     */
    public function destroy($id)
    {
        $blog = Blog::findOrFail($id);

        // Authorization check - ensure the consultant owns the blog
        if (auth()->user()->consultant->id !== $blog->consultant_id) {
            return response()->json([
                'message' => 'Unauthorized to delete this blog'
            ], 403);
        }

        // Delete associated image if exists
        if ($blog->featured_image) {
            Storage::disk('public')->delete($blog->featured_image);
        }

        $blog->delete();

        return response()->json([
            'message' => 'Blog deleted successfully'
        ]);
    }
}