<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'index']);
Route::view('privacy-policy', 'pages.privacy-policy');

Route::prefix('blogs')->as('blogs.')->controller(BlogController::class)->group(function () {

    Route::get('/', 'index')->name('index');
    Route::get('/categories/{postCategory:seo_slug}', 'categoriesIndex')->name('categories.index');
    Route::get('/{post:seo_slug}', 'show')->name('show');
});


Route::get('/clear', function () {
    Artisan::call('config:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('cache:clear');

    return "Cache cleared successfully";
});
