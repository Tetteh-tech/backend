<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(Request $request)
    {
        $blogs = Blog::where('consultant_id', $request->user()->id)
                    ->with(['ratings'])
                    ->latest()
                    ->get();
        
        return response()->json($blogs);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $blog = Blog::create([
            'image_path' => $request->file('image')->store('blog_images', 'public'),
            'title' => $request->title,
            'content' => $request->content,
        ]);

        return response()->json($blog, 201);
    }

    public function rate(Request $request, Blog $blog)
    {
        $request->validate([
            'rating' => 'required|integer|between:1,5',
        ]);

        $rating = $blog->ratings()->updateOrCreate(
            ['user_id' => $request->user()->id],
            ['rating' => $request->rating]
        );

        return response()->json([
            'rating' => $rating,
            'average_rating' => $blog->average_rating
        ]);
    }
}
