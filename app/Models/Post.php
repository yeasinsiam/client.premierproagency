<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Post extends Model implements HasMedia
{

    use InteractsWithMedia;

    protected $fillable = [
        'title',
        'seo_slug'
    ];


    public function getMiniThumbnailAttribute()
    {
        return $this->getFirstMedia('thumbnail-mini');
    }

    public function getLargeThumbnailAttribute()
    {
        return $this->getFirstMedia('thumbnail-large');
    }


    public function categories()
    {
        return $this->belongsToMany(PostCategory::class, 'categories_posts');
    }

    public function tags()
    {
        return $this->belongsToMany(PostTag::class, 'tags_posts');
    }
}