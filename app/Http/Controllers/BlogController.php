<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\PostCategory;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('pages.blogs.index', [
            'posts' => Post::with('media')->paginate(8),
            'categories' => PostCategory::withCount('posts')->get()
        ]);
    }

    /**
     * Display a listing of the resource.
     */
    public function categoriesIndex(PostCategory $postCategory)
    {

        return view('pages.blogs.index', [

            'posts' => Post::with('media')
                ->whereHas('categories', function ($q) use ($postCategory) {
                    $q->where('post_categories.id', $postCategory->id);
                })
                ->paginate(8),

            'categories' => PostCategory::withCount('posts')->get(),

            'postCategory' => $postCategory
        ]);
    }


    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        return view('pages.blogs.show', [
            'post' => $post,
            'categories' => PostCategory::withCount('posts')->get()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        //
    }
}
