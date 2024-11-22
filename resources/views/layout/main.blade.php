<!DOCTYPE html>

<html lang="en">

<head>

    <!-- ==============================================
        Basic Page Needs
        =============================================== -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->

    <title>@yield('meta-title')</title>


    @if (!$__env->yieldContent('meta-description', ''))
        <meta name="description"
            content="PremierPro Agency where we redefine digital presence with unique strategies and top-notch web development. Let's make your brand stand out in the digital realm!">
    @else
        <meta name="description" content="@yield('meta-description')">
    @endif

    @if ($__env->yieldContent('meta-keywords', ''))
        <meta name="keywords" content="@yield('meta-keywords')">
    @endif

    <meta name="subject"
        content="PremierPro Agency where we redefine digital presence with unique strategies and top-notch web development. Let's make your brand stand out in the digital realm!">
    <meta name="author" content="PremierPro Agency">

    <!-- ==============================================
        Favicons
        =============================================== -->
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#333333">
    <meta name="msapplication-TileColor" content="#333333">
    <meta name="theme-color" content="#333333">


    <!-- ==============================================
        SEO
        =============================================== -->
    <meta name="google-site-verification" content="TiMzL_QIqhyUbfgJQuDKJhRLKge9sfX19M5q-JLDkXc" />


    <!-- ==============================================
        Vendor Stylesheet
        =============================================== -->
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/vendor/slider.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/main.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/vendor/icons.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/vendor/animation.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/vendor/gallery.min.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/vendor/cookie-notice.min.css">

    <!-- ==============================================
        Custom Stylesheet
        =============================================== -->
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/default.css">
    <link rel="stylesheet" href="{{ asset('/') }}assets/css/theme-yellow.css">
    @livewireStyles



    <!-- ==============================================
        Theme Settings
        =============================================== -->
    <style>
        :root {
            --header-bg-color: #111111;
            --nav-item-color: #f5f5f5;
            --top-nav-item-color: #f5f5f5;
            --hero-bg-color: #090909;

            --section-1-bg-color: #111111;
            --section-2-bg-color: #111111;
            --section-3-bg-color: #191919;
            --section-4-bg-color: #111111;
            --section-5-bg-color: #191919;
            /* --section-5-bg-color: #f5f5f5; */
            --section-6-bg-color: #0a131a;
            --section-7-bg-color: #0a131a;
            --section-8-bg-color: #111111;


            /*
            --section-2-bg-color: #f5f5f5;
            --section-3-bg-color: #eeeeee;
            --section-6-bg-color: #111111;
            --section-7-bg-color: #111111;

            --section-8-bg-color: #eeeeee; */


            --card-bg-color: #121a21;

            --footer-bg-color: #191919;
        }
    </style>

    @stack('head-styles')

</head>

<body class="home">
    <!-- Header -->
    <header id="header">

        <!-- Navbar -->
        <nav data-aos="zoom-out" data-aos-delay="800" class="navbar navbar-expand d-block pt-3"
            style="@yield('navbar-styles')">
            <div class="container">
                <ul class="header-mini-nav">
                    <li>
                        <a href="tel:+8801833282883">
                            <i class="icon-phone mr-1"></i>
                            +880-1833-282883
                        </a>
                    </li>
                    <li>
                        <a href="mailto:info@premierproagency.com">
                            <i class="icon-envelope mr-1"></i>
                            info@premierproagency.com
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="icon-location-pin mr-1"></i>
                            Uttara, Dhaka, Bangladesh
                        </a>
                    </li>
                </ul>
            </div>
            <div class="container header">

                <!-- Navbar Brand-->
                <a class="navbar-brand" href="/">
                    <img src="{{ asset('/') }}logo.png" alt="PremierPro Agency"
                        style="height: 60px; max-height: 100%">

                </a>

                <!-- Nav holder -->
                <div class="ml-auto"></div>

                <!-- Navbar Items -->
                <ul class="navbar-nav items">

                    <li class="nav-item">
                        <a href="#about" class="nav-link smooth-anchor">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#services" class="nav-link smooth-anchor">Services</a>
                    </li>
                    <li class="nav-item">
                        <a href="#team" class="nav-link smooth-anchor">Team</a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('blogs.index') }}" class="nav-link ">Blogs</a>
                    </li>
                </ul>

                <!-- Navbar Icons -->
                <ul class="navbar-nav icons">
                    {{-- <li class="nav-item">
                        <a href="javascript:void(0)" class="nav-link" data-toggle="modal" data-target="#search">
                            <i class="icon-magnifier"></i>
                        </a>
                    </li> --}}
                    <li class="nav-item social">
                        <a href="https://www.facebook.com/premierproagency" target="_blank" class="nav-link"><i
                                class="icon-social-facebook"></i></a>
                    </li>
                    <li class="nav-item social">
                        <a href="https://www.linkedin.com/in/premierproagency/" target="_blank" class="nav-link"><i
                                class="icon-social-linkedin"></i></a>
                    </li>
                    <li class="nav-item social">
                        <a href="https://twitter.com/Premierpro123" target="_blank" class="nav-link"><i
                                class="icon-social-twitter"></i></a>
                    </li>
                </ul>

                <!-- Navbar Toggle -->
                <ul class="navbar-nav toggle">
                    <li class="nav-item">
                        <a href="javascript:void(0)" class="nav-link" data-toggle="modal" data-target="#menu">
                            <i class="icon-menu m-0"></i>
                        </a>
                    </li>
                </ul>

                <!-- Navbar Action -->
                <ul class="navbar-nav action">
                    <li class="nav-item ml-3">
                        <a href="#contact" class="btn ml-lg-auto dark-button smooth-anchor"><i
                                class="icon-speech"></i>CONTACT US</a>
                    </li>
                </ul>
            </div>
        </nav>

    </header>


    @yield('content')


    <!-- Footer -->
    <footer class="odd">

        <!-- Footer [links] -->
        <section id="footer" class="footer">
            <div class="container">
                <div class="row items footer-widget">
                    <div class="col-12 col-lg-5 p-0">
                        <div class="row">
                            <div class="branding col-12 p-3 text-center text-lg-left item">
                                <div class="brand">
                                    <a href="/" class="logo">
                                        <img src="{{ asset('/') }}logo.png" alt="PremierPro Agency"
                                            style="height: 60px; max-height: 100%">

                                    </a>
                                </div>
                                <p>PremierPro Agency where we redefine digital presence with unique strategies and
                                    top-notch web development. Let's make your brand stand out in the digital realm!</p>
                                <ul class="navbar-nav social share-list mt-0 ml-auto">

                                    <li class="nav-item">
                                        <a href="https://www.linkedin.com/in/premierproagency/" target="_blank"
                                            class="nav-link"><i class="icon-social-linkedin"></i></a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="https://twitter.com/Premierpro123" target="_blank"
                                            class="nav-link"><i class="icon-social-twitter"></i></a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="https://www.facebook.com/premierproagency" target="_blank"
                                            class="nav-link"><i class="icon-social-facebook"></i></a>
                                    </li>


                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-7 p-0">
                        <div class="row">


                            <div class="col-12 col-lg-6 p-3 text-center text-lg-left item">
                                <h4 class="title">Our Services</h4>
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link">Social Media Management</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link">Facebook & Instagram Ads
                                            Expert</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link">Google Ads Expert</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link">Shopify Dropshipping Expert</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link">Web Development</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="col-12 col-lg-6 p-3 text-center text-lg-left item">
                                <h4 class="title">Contact</h4>
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a href="tel:+8801833282883" class="nav-link">
                                            <i class="icon-phone mr-2"></i>
                                            +880-1833-282883
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="mailto:info@premierproagency.com" class="nav-link">
                                            <i class="icon-envelope mr-2"></i>
                                            info@premierproagency.com
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="javascript:void(0)" class="nav-link">
                                            <i class="icon-location-pin mr-2"></i>
                                            Uttara, Dhaka, Bangladesh
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#contact"
                                            class="mt-4 mr-auto ml-auto ml-lg-0 btn dark-button smooth-anchor"><i
                                                class="icon-speech"></i>SEND A MESSAGE</a>
                                    </li>
                                </ul>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Copyright -->
        <section id="copyright" class="p-3 copyright">
            <div class="container">
                <div class="row">
                    {{-- <div class="col-12 col-md-6 p-3 text-center text-lg-left">
                        <p>Enjoy the low price. We are tracking any intention of piracy.</p>
                        <!--
                                Suggestion: Replace the text above with a description of your website.
                             -->
                    </div> --}}
                    <div class="col-12  p-3 text-center ">
                        <p>Copyright@<?php echo now()->format('Y'); ?> PremierPro Agency best marketing agency. <a
                                href="/privacy-policy">Privacy Policy</a> All rights reserved.
                        </p>
                    </div>
                </div>
            </div>
        </section>

    </footer>

    <!-- #region Global ============================ -->

    <!-- Modal [search] -->
    <div id="search" class="p-0 modal fade" role="dialog" aria-labelledby="search" aria-hidden="true">
        <div class="modal-dialog modal-dialog-slideout" role="document">
            <div class="modal-content full">
                <div class="modal-header" data-dismiss="modal">
                    Search <i class="icon-close"></i>
                </div>
                <div class="modal-body">
                    <form class="row">
                        <div class="col-12 p-0 align-self-center">
                            <div class="row">
                                <div class="col-12 p-0 pb-3">
                                    <h2>What are you looking for?</h2>
                                    <p>Search for services and news about the best that happens in the world.</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 p-0 input-group">
                                    <input type="text" class="form-control" placeholder="Enter Keywords">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 p-0 input-group align-self-center">
                                    <button class="btn primary-button"><i class="icon-magnifier"></i>SEARCH</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal [sign] -->
    <div id="sign" class="p-0 modal fade" role="dialog" aria-labelledby="sign" aria-hidden="true">
        <div class="modal-dialog modal-dialog-slideout" role="document">
            <div class="modal-content full">
                <div class="modal-header" data-dismiss="modal">
                    Sign In Form <i class="icon-close"></i>
                </div>
                <div class="modal-body">
                    <form action="/" class="row">
                        <div class="col-12 p-0 align-self-center">
                            <div class="row">
                                <div class="col-12 p-0 pb-3">
                                    <h2>Sign In</h2>
                                    <p>Don't have an account? <a href="javascript:void(0)" class="primary-color"
                                            data-toggle="modal" data-target="#register">Register now</a>.</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 p-0 input-group">
                                    <input type="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="col-12 p-0 input-group">
                                    <input type="password" class="form-control" placeholder="Password" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 p-0 input-group align-self-center">
                                    <button class="btn primary-button"><i class="icon-login"></i>LOGIN</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal [register] -->
    <div id="register" class="p-0 modal fade" role="dialog" aria-labelledby="register" aria-hidden="true">
        <div class="modal-dialog modal-dialog-slideout" role="document">
            <div class="modal-content full">
                <div class="modal-header" data-dismiss="modal">
                    Register Form <i class="icon-close"></i>
                </div>
                <div class="modal-body">
                    <form action="/" class="row">
                        <div class="col-12 p-0 align-self-center">
                            <div class="row">
                                <div class="col-12 p-0 pb-3">
                                    <h2>Register</h2>
                                    <p>Have an account? <a href="javascript:void(0)" class="primary-color"
                                            data-toggle="modal" data-target="#sign">Sign In</a>.</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 p-0 input-group">
                                    <input type="text" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="col-12 p-0 input-group">
                                    <input type="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="col-12 p-0 input-group">
                                    <input type="password" class="form-control" placeholder="Password" required>
                                </div>
                                <div class="col-12 p-0 input-group">
                                    <input type="password" class="form-control" placeholder="Confirm Password"
                                        required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 p-0 input-group align-self-center">
                                    <button class="btn primary-button"><i class="icon-rocket"></i>REGISTER</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal [responsive menu] -->
    <div id="menu" class="p-0 modal fade" role="dialog" aria-labelledby="menu" aria-hidden="true">
        <div class="modal-dialog modal-dialog-slideout" role="document">
            <div class="modal-content full">
                <div class="modal-header" data-dismiss="modal">
                    Menu <i class="icon-close"></i>
                </div>
                <div class="menu modal-body">
                    <div class="row w-100">
                        <div class="items p-0 col-12 text-center">
                            <!-- Append [navbar] -->
                        </div>
                        <div class="contacts p-0 col-12 text-center">
                            <!-- Append [navbar] -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scroll [to top] -->
    <div id="scroll-to-top" class="scroll-to-top">
        <a href="#header" class="smooth-anchor">
            <i class="icon-arrow-up"></i>
        </a>
    </div>

    <!-- ==============================================
        Google reCAPTCHA // Put your site key here
        =============================================== -->
    {{-- <script src="https://www.google.com/recaptcha/api.js?render=6Lf-NwEVAAAAAPo_wwOYxFW18D9_EKvwxJxeyUx7"></script> --}}

    <!-- ==============================================
        Vendor Scripts
        =============================================== -->
    <script src="{{ asset('/') }}assets/js/vendor/jquery.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/jquery.easing.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/jquery.inview.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/popper.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/bootstrap.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/ponyfill.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/slider.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/animation.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/progress-radial.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/bricklayer.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/gallery.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/shuffle.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/cookie-notice.min.js"></script>
    <script src="{{ asset('/') }}assets/js/vendor/particles.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/lazysizes@5.3.2/lazysizes.min.js"></script>
    @livewireScripts
    <script src="{{ asset('/') }}assets/js/main.js"></script>

    <!-- #endregion Global ========================= -->
    <!-- Messenger Chat Plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat Plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
        var chatbox = document.getElementById('fb-customer-chat');
        chatbox.setAttribute("page_id", "169396152920125");
        chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                xfbml: true,
                version: 'v18.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-PMVBSYMKL0"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-PMVBSYMKL0');
    </script>

</body>

</html>
