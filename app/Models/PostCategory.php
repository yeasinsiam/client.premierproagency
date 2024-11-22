<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
    protected $fillable = [
        'title',
        'seo_slug'
    ];

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'categories_posts');
    }
}
