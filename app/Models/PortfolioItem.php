<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\Sortable;
use Spatie\EloquentSortable\SortableTrait;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class PortfolioItem extends Model implements HasMedia, Sortable
{
    use InteractsWithMedia, SortableTrait;


    protected $fillable = [
        'title'
    ];


    public $sortable = [
        'order_column_name' => 'order_column',
        'sort_when_creating' => true,
    ];


    public function  getThumbnailAttribute()
    {
        return $this->getFirstMedia('thumbnail');
    }
}
