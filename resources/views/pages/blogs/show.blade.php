@extends('layout.main')
@section('meta-title', sprintf('%s - PremierPro Agency', $post->seo_meta_title ?? $post->title))
@section('meta-description', $post->seo_meta_description ? sprintf('%s - PremierPro Agency',
    $post->seo_meta_description) : '')
@section('meta-keywords', $post->seo_meta_keywords)
@section('content')
    <div class="navbar-holder">
    </div>
    <section id="content" class="section-1 body-mode-dark single featured" style="padding-top: 100px;">
        <div class="container">
            <div class="row">
                <!-- Main -->
                <main class="col-12 col-lg-8 p-0">
                    <div class="row">
                        <div class="col-12 align-self-center">
                            <h2 class="featured mt-0 ml-0">{{ $post->title }}</h2>

                            <div class="gallery pt-2">
                                <a href="{{ $post->largeThumbnail->getUrl() }}">
                                    <img src="{{ $post->largeThumbnail->responsiveImages()->getPlaceholderSvg() }}"
                                        data-srcset="{{ $post->largeThumbnail->getSrcset() }}" class="lazyload w-100"
                                        alt="{{ $post->title }}">
                                </a>
                            </div>

                            <div class="pt-3 post-content">
                                {!! $post->content !!}
                            </div>



                            <div class="pt-5 d-flex flex-wrap align-items-center">
                                <span class="d-lg-flex align-items-center">Tags: </span>
                                <div class="pl-2">
                                    @foreach ($post->tags as $tag)
                                        <a href="javascript:void(0)" class="  text-sm ">{{ $tag->title }}@if (!$loop->last)
                                                ,
                                            @endif
                                        </a>
                                    @endforeach
                                </div>
                            </div>

                            <!-- Post Holder -->
                            <ul class="mb-5 post-holder">
                                <li class="post-meta-item">
                                    <time class="date"><span class="posted-on">Posted on <a href="#"
                                                rel="bookmark"><time class="entry-date published updated"
                                                    datetime="{{ $post->created_at }}">{{ $post->created_at->format('d F, Y') }}</time></a></span></time>
                                </li>
                            </ul>


                        </div>
                    </div>
                </main>

                <!-- Sidebar -->
                <aside class="col-12 col-lg-4 pl-lg-5 p-0 float-right sidebar">
                    <div class="row">
                        <div class="col-12 align-self-center text-left">

                            <!-- Widget [author] -->
                            <div class="item widget-author">
                                <ul class="list-group list-group-flush">
                                    {{-- <li class="list-group-item">
                                        <a href="#" class="author">
                                            <img src="https://leverage-html.codings.dev/assets/images/team-1.jpg"
                                                alt="Lorem ipsum">
                                            <h4 class="title">By John Doe</h4>
                                        </a>
                                        <p class="biography">I am a fan of motorsport and music and my hobby is to collect
                                            miniatures of racing cars.</p>
                                    </li> --}}
                                    <li class="list-group-item d-flex flex-wrap justify-content-between align-items-center">
                                        <span class="d-lg-flex align-items-center"><i
                                                class="icon-clock mr-2"></i>{{ $post->created_at->diffForHumans() }}</span>
                                        <div class="pt-1">
                                            @foreach ($post->categories as $category)
                                                <a href="{{ route('blogs.categories.index', $category->seo_slug) }}"
                                                    class="badge tag m-1 active"
                                                    style="line-height: 1;">{{ $category->title }}</a>
                                            @endforeach
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <!-- Widget [categories] -->
                            <div class="item widget-categories">
                                <h4 class="title">Categories</h4>
                                <ul class="list-group list-group-flush">
                                    @foreach ($categories as $category)
                                        @if ($category->posts_count)
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                <a
                                                    href="{{ route('blogs.categories.index', $category->seo_slug) }}">{{ $category->title }}</a>
                                                <span class="badge circle">{{ $category->posts_count }}</span>
                                            </li>
                                        @endif
                                    @endforeach

                                </ul>
                            </div>




                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </section>
@endsection
@push('head-styles')
    <style>
        .post-content h2 {
            margin: 1.5rem 0;
            font-size: 1.5rem;
            font-weight: var(--h2-weight);
            line-height: 1.2;
            font-family: var(--h2-font);
            -ms-word-wrap: break-word;
            word-wrap: break-word;
        }
    </style>
@endpush
