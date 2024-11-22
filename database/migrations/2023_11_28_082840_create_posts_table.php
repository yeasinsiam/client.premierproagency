<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->longText('content');
            // SEO
            $table->string('seo_slug');
            $table->string('seo_meta_title')->nullable();
            $table->string('seo_meta_description')->nullable();
            $table->string('seo_meta_keywords')->nullable();
            $table->timestamps();
        });

        Schema::create('categories_posts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('post_id')->constrained()->cascadeOnDelete();
            $table->foreignId('post_category_id')->constrained()->cascadeOnDelete();
            $table->timestamps();
        });

        Schema::create('tags_posts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('post_id')->constrained()->cascadeOnDelete();
            $table->foreignId('post_tag_id')->constrained()->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('categories_posts');
        Schema::dropIfExists('tags_posts');
        Schema::dropIfExists('posts');
    }
};
