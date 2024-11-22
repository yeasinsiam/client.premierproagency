<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\EloquentSortable\Sortable;
use Spatie\EloquentSortable\SortableTrait;

class Portfolio extends Model implements Sortable
{
    use SortableTrait;


    protected $fillable = [
        'title',
        'seo_slug',

        'order_column'
    ];


    public $sortable = [
        'order_column_name' => 'order_column',
        'sort_when_creating' => true,
    ];


    public function portfolioItems()
    {
        return $this->hasMany(PortfolioItem::class);
    }
}
