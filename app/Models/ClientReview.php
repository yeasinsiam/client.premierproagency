<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\Sortable;
use Spatie\EloquentSortable\SortableTrait;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class ClientReview extends Model implements HasMedia, Sortable
{
    use InteractsWithMedia, SortableTrait;



    protected $fillable = [
        'name',
        'comment'
    ];


    public $sortable = [
        'order_column_name' => 'order_column',
        'sort_when_creating' => true,
    ];


    public function getAvatarAttribute()
    {
        return $this->getFirstMedia('avatar');
    }
}
