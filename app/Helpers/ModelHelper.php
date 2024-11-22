<?php


namespace App\Helpers;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class ModelHelper
{


    public static function generateUniqueSlugFromModel(?string $string,  string $modelClassName, string $field = 'seo_slug')
    {

        if (!$string)
            return '';

        $slug = Str::slug($string, '-');

        $i = 1;
        while (app()->make($modelClassName)->where($field, $slug)->exists()) {
            $slug = Str::slug($string, '-') . '-' . $i++;
        }

        return $slug;
    }
}
