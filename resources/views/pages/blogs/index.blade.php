@extends('layout.main')
@section('meta-title',
    isset($postCategory)
    ? sprintf('%s Blogs - PremierPro Agency', $postCategory->title)
    : 'Blogs -
    PremierPro Agency')
@section('content')
    <div class="navbar-holder"></div>
    <!-- Blog -->
    <section id="blog" class="section-1 sz  zection-vs-30 section-vsr-30 body-mode-dark showcase blog-grid masonry news"
        style="padding-top: 70px">
        <div data-aos="zoom-in" data-aos-delay="800" data-aos-anchor="body" class="container full-grid">
            <div class="row content blog-grid masonry">
                <div class="col-12 mx-3 d-flex justify-content-center flex-wrap">

                    <a href="{{ route('blogs.index') }}" @class(['badge tag m-1', 'active' => !isset($postCategory)]) style="line-height: 1;">All</a>

                    @foreach ($categories as $category)
                        @if ($category->posts_count)
                            <a href="{{ route('blogs.categories.index', $category->seo_slug) }}"
                                @class([
                                    'badge tag m-1',
                                    'active' => isset($postCategory) && $postCategory->id == $category->id,
                                ]) style="line-height: 1;">{{ $category->title }}</a>
                        @endif
                    @endforeach

                </div>
                <main class="col-12 pt-5">
                    <div class="bricklayer items columns-4">
                        @foreach ($posts as $post)
                            <div class="card p-0 text-center item">
                                <div class="image-over">
                                    <img src="{{ $post->miniThumbnail->responsiveImages()->getPlaceholderSvg() }}"
                                        data-srcset="{{ $post->miniThumbnail->getSrcset() }}" class="lazyload"
                                        alt="{{ $post->title }}">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <a href="{{ route('blogs.show', $post->seo_slug) }}">
                                            <h4>{{ $post->title }}</h4>
                                        </a>
                                    </div>
                                    <div class="card-footer d-lg-flex align-items-center justify-content-center">
                                        {{-- <a href="#" class="d-lg-flex align-items-center"><i class="icon-user"></i>John
                                            Doe</a> --}}
                                        <a href="#" class="d-lg-flex align-items-center"><i
                                                class="icon-clock"></i>{{ $post->created_at->diffForHumans() }}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </main>
            </div>

            <!-- Pagination -->
            <div class="row">
                <div class="col-12">
                    {{ $posts->links('components.pagination') }}
                </div>
            </div>
        </div>
    </section>
@endsection
