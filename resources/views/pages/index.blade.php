@extends('layout.main')
@section('meta-title', 'PremierPro Agency For Grow Your Business')
@section('content')
    <!-- Hero -->
    <section id="slider" class="hero odd p-0 featured">
        <div class="swiper-container no-slider animation slider-h-100">
            <div class="swiper-wrapper">

                <!-- Item 1 -->
                <div class="swiper-slide slide-center">

                    <!-- Particles -->
                    <div id="particles-1" class="particles full-image" data-particle="space" data-mask="70"></div>

                    <div class="slide-content row">
                        <div class="col-12 d-flex inner">
                            <div class="center align-self-center text-center">
                                <h1 data-aos="zoom-out-up" data-aos-delay="400" class="title effect-static-text">
                                    LET'S CREATE SOMETHING NEW</h1>
                                <p data-aos="zoom-out-up" data-aos-delay="800" class="description ml-auto mr-auto">
                                    Are you ready? Count on us to revolutionize your company's online identity.</p>
                                <a href="#contact" data-aos="zoom-out-up" data-aos-delay="1200"
                                    class="smooth-anchor ml-auto mr-auto mt-5 btn dark-button"><i class="icon-cup"></i>GET
                                    STARTED</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="swiper-pagination"></div>
        </div>
    </section>

    <!-- About Us -->
    <section id="about" class="section-1 odd highlights image-right ">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-7 align-self-center text-center text-md-left">
                    <div class="row intro">
                        <div class="col-12 p-0">
                            <h2 class="featured alt">About Us</h2>
                            <p>Welcome to PremierPro Agency, where digital excellence meets innovation. We specialize in
                                crafting compelling online experiences through expert digital marketing and web
                                development. Our client-centric approach ensures tailored solutions that deliver proven
                                results. Ready to elevate your brand's digital presence? Let's connect and make it
                                happen!</p>
                        </div>
                    </div>
                    <div class="about-experience-item row items">

                        <div class="col-12  col-lg-8 p-0 ">

                            <div class="row item">
                                <div class="col-12 col-md-2 align-self-center">
                                    <i class="icon icon-badge"></i>
                                </div>
                                <div class="col-12 col-md-9 align-self-center">
                                    <h4>Quality</h4>
                                    <p>Everything we do has the commitment of a well trained and motivated team.</p>
                                </div>
                            </div>
                            <div class="row item">
                                <div class="col-12 col-md-3 align-self-center">
                                    <i class="icon icon-briefcase"></i>
                                </div>
                                <div class="col-12 col-md-8 align-self-center">
                                    <h4>Experience</h4>
                                    <p>Focused on results we seek to raise the level of our customers.</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-12 col-lg-4 p-0">
                            <div class="experience-year-container p-2 py-5 text-center ">
                                <h2 class="m-0 text-light text-center">4+</h2>
                                <h6 class="m-0 text-light">YEARS OF</h6>
                                <p class="m-0 text-light">EXPERIENCE</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" col-12 col-md-5 pt-5 pt-lg-0">
                    <a href="{{ asset('/') }}assets/images/about-4.webp">
                        <img data-src="{{ asset('/') }}assets/images/about-4.webp" class="lazyload fit-image"
                            alt="About PremierPro Agency">
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Services -->
    <svg style="width:0;height:0;position:absolute;" aria-hidden="true" focusable="false">
        <linearGradient id="serviceIconGradient" x1="0%" y1="100%" x2="100%" y2="0%">
            <stop offset="15%" style="stop-color:var(--secondary-color);stop-opacity:1.00" />
            <stop offset="65%" style="stop-color:var(--primary-color);stop-opacity:1.00" />
        </linearGradient>
    </svg>
    <section id="services" class="section-2 odd offers featured" style="padding-top: 50px;">
        <div class="container">
            <div class="row text-center intro">
                <div class="col-12">
                    <h2>Our Services</h2>
                    <p class="text-max-800">Focused on results we seek to raise the level of our customers.</p>
                </div>
            </div>
            <div class="row justify-content-center text-center items">

                <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card h-100 ">
                        <i class="icon icon-globe"></i>
                        <h4>Web Development</h4>
                        <p>Our web development service creates captivating websites that deliver seamless functionality
                            and optimal performance. With expertise in cutting-edge technologies, we tailor solutions to
                            meet your specific needs and objectives. From stunning designs to robust e-commerce
                            platforms, we bring your vision to life for online success.</p>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card h-100 ">
                        <i class="icon icon-chart" style="margin: 0 auto;"></i>
                        <h4>Social Media Management</h4>
                        <p>Elevate your online presence with our Social Media Management services. We curate engaging
                            content, optimize posting schedules, and analyze data to maximize your impact across
                            platforms. Stay connected, stay relevant.</p>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card h-100">
                        <div class="d-inline-flex m-auto" style="width: min-content;">
                            <x-fab-facebook-square class="item-icon" />
                            <x-fab-instagram class="item-icon pl-1" />
                        </div>
                        <h4>Facebook & Instagram Ads</h4>
                        <p>Supercharge your brand's reach! Our expertly crafted Facebook and Instagram ads propel your
                            business forward. Targeted campaigns, captivating visuals, and data-driven strategies ensure
                            maximum engagement. Elevate your social media presence and convert clicks into customers.
                            Let your ads make an impact that lasts.</p>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card h-100">
                        <x-fab-google class="item-icon" />
                        <h4>Google Ads</h4>
                        <p>Drive results with precision. Our Google Ads expertise ensures strategic targeting,
                            compelling ad copy, and constant optimization. Maximize your ROI and elevate your online
                            visibility. Start your journey to digital success today.</p>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card h-100">
                        <x-fab-shopify class="item-icon" />
                        <h4>Shopify Dropshipping</h4>
                        <p>Unlock e-commerce success effortlessly. Our Shopify Dropshipping solution empowers you to
                            start and scale your online store seamlessly. From product sourcing to order fulfillment, we
                            handle the logistics so you can focus on growing your business. Launch your store
                            stress-free with our tailored dropshipping services.
                        </p>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card h-100">
                        <i class="icon icon-bulb " style="margin: 0"></i>
                        <h4>SEO</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis, soluta at. Illo praesentium
                            placeat dolor a facere. Eaque, magni fuga?
                        </p>
                    </div>
                </div>

                {{-- <div class="col-12 col-md-6 col-lg-4 item">
                    <div class="card featured">
                        <i class="icon icon-bulb"></i>
                        <h4>Brand Creation</h4>
                        <p>We create your brand thinking about your target audience using design techniques.</p>
                    </div>
                </div> --}}
            </div>
        </div>
    </section>




    <!-- Skills -->
    <section id="skills" class="section-3 odd counter skills featured">
        <div class="container">
            <div class="row text-center intro">
                <div class="col-12">
                    <h2 class="super effect-static-text">Main Skills</h2>
                    <p class="text-max-800">We see all types of projects as if they were ours. This brings us closer to
                        our clients' projects bringing much more confidence and commitment.</p>
                </div>
            </div>
            <div data-aos-id="counter" data-aos="fade-up" data-aos-delay="200"
                class="row justify-content-center text-center items">
                <div class="col-12 col-md-6 col-lg-3 item">
                    <div data-percent="99" class="radial">
                        <span></span>
                    </div>
                    <h4>Social Media Ads</h4>
                </div>
                <div class="col-12 col-md-6 col-lg-3 item">
                    <div data-percent="95" class="radial">
                        <span></span>
                    </div>
                    <h4>Google Analytics</h4>
                </div>
                <div class="col-12 col-md-6 col-lg-3 item">
                    <div data-percent="99" class="radial">
                        <span></span>
                    </div>
                    <h4>Web Development</h4>
                </div>
                <div class="col-12 col-md-6 col-lg-3 item">
                    <div data-percent="98" class="radial">
                        <span></span>
                    </div>
                    <h4>SEO</h4>
                </div>
            </div>
        </div>
    </section>

    <!-- Pricing -->
    <section id="pricing" class="section-6 odd plans featured custom">
        <div class="container">
            <div class="row text-center intro">
                <div class="col-12">
                    <h2 class="super effect-static-text">Plans and Pricing</h2>
                </div>
            </div>
            <div class="row justify-content-center text-center items">
                <div class="col-12 col-md-6 col-lg-4  text-center item">
                    <div class="card">
                        <div class="d-inline-flex m-auto" style="width: min-content;">
                            <x-fab-facebook-square class="item-icon" />
                            <x-fab-instagram class="item-icon pl-1" />
                        </div>
                        <h4>FACEBOOK & INSTAGRAM</h4>
                        <p>Social Media Marketing</p>
                        <span class="price"><i>$</i>650<sub><del style="font-size: 13px"><i>$</i>1000</del></sub>
                            <small style="font-size: 13px">/month</small>
                        </span>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Account Create And Optimize</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Professional Page Setup & Optimization </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Creative Post Designs</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Research Of Trending Hashtags</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Facebook Ads & Instagram Ads Setup</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Targeted Audience Research</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Re-Targeting & Lookalike Audience. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Research, Plan & Strategy. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Setup & Fix Facebook Pixel Custom Events. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Setup Facebook Conversion API. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>E-Commerce All Event Setup With Dynamic Parameters Tracking</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span> Other Social Media Platform Tracking.</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Facebook Products Catalog And Commerce Manager</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>

                        </ul>
                        <a href="#contact" class="smooth-anchor btn mx-auto primary-button"><i
                                class="icon-arrow-right-circle"></i>HIRE US</a>
                    </div>
                </div>
                <div class=" col-12 col-md-6 col-lg-4  text-center item ">
                    <div class="card">
                        <x-fab-google class="item-icon" />
                        <h4>GOOGLE ADS &<br> ANALYTICS 4</h4>
                        <p>Search Engine Marketing</p>
                        <span class="price"><i>$</i>700<sub><del style="font-size: 13px"><i>$</i>1000</del></sub>
                            <small style="font-size: 13px">/month</small>

                        </span>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Google Ads Account Create & Setup </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Google Ads & Analytics. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Keyword Research And Analysis </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Ads Development Bidding. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Negative Keywords Research </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Google Ads Conversion Tracking </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Remarketing Campaigns</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Monthly Management & Optimization </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Conversion Rate Optimization (CRO). </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Display Advertising </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Analytics And Performance Tracking</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Google Tag Manager Setup</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>GA4 Server-Side Tracking</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>E-Commerce Events Tracking </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Consulting And Strategy Development </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>GA4 Enhanced Ecommerce Tracking. </span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                        </ul>
                        <a href="#contact" class="smooth-anchor btn mx-auto primary-button"><i
                                class="icon-arrow-right-circle"></i>HIRE US</a>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4  text-center item web-development">
                    <div class="card">
                        <i class="icon icon-globe"></i>
                        <h4>Web Development</h4>
                        <p>Laravel & React Webapplications</p>
                        <span class="price" style=" font-size: 28px; white-space: nowrap">
                            <sup style="font-size: 13px; vertical-align: super;">Starting</sup>
                            <span>$400</span>
                            <sub style="font-size: 13px;">/Project</sub>
                            {{-- <i>$</i>500 - <i>$</i>1000 --}}
                            {{-- <sub>
                                <del
                                    style="font-size: 13px"><i>$</i>1000</del></sub> --}}
                        </span>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Full-stack web development using modern technologies</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>E-commerce website development</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Custom web application development using Laravel framework</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Single-page application (SPA) development using React.js</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>API development and integration</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Responsive web design for mobile and tablet devices using
                                    TailwindCSS/Bootstrap</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Custom website design and development</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center text-left">
                                <span>Web performance optimization and scalability</span>
                                <i class="icon-min m-0 icon-check text-right"></i>
                            </li>
                        </ul>
                        <a href="#contact" class="smooth-anchor btn mx-auto primary-button"><i
                                class="icon-arrow-right-circle"></i>HIRE US</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Team -->
    <section id="team" class="section-4 odd carousel">
        <div class="overflow-holder">
            <div class="container">
                <div class="row text-center intro">
                    <div class="col-12">
                        <h2>Team of Experts</h2>
                        <p class="text-max-800">Our team will help you define a stand-out creative direction and will
                            translate it into visual assets that will resonate with your audience.</p>
                    </div>
                </div>



                <div class="row justify-content-center ">
                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/yeasin-rahman-siam.webp"
                                alt="Yeasin Rahman Siam" class="person lazyload"
                                style="width: 100px; height: 100px; object-fit: cover; object-position: top;">
                            <h4>Yeasin Rahman Siam</h4>
                            <p>Full Stack Web Developer</p>
                            <ul class="navbar-nav social share-list ">
                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/yeasin-rahman-siam-191258284/" target="_blank"
                                        class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://github.com/yeasinsiam" target="_blank" class="nav-link"><i
                                            class="icon-social-github"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.facebook.com/siam.rahaman.16" target="_blank"
                                        class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                                {{--
                                <li class="nav-item">
                                    <a href="javascript:void(0)" target="_blank" class="nav-link"><i
                                            class="icon-social-twitter"></i></a>
                                </li> --}}
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/masud-rana.webp" alt="Masud Rana"
                                class="lazyload person"
                                style="width: 100px; height: 100px; object-fit: cover; object-position: top;">
                            <h4>Masud Rana</h4>
                            <p>Google Ads Expert</p>
                            <ul class="navbar-nav social share-list ">
                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/masudrana7302" target="_blank"
                                        class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.facebook.com/masudrana1188" target="_blank" class="nav-link"><i
                                            class="icon-social-facebook"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://instagram.com/dm_masudrana1" target="_blank" class="nav-link"><i
                                            class="icon-social-instagram"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://x.com/dm_masudrana1" target="_blank" class="nav-link"><i
                                            class="icon-social-twitter"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/tanvir-hossen.webp" alt="Tanvir Hossen"
                                class="lazyload person">
                            <h4>Tanvir Hossen</h4>
                            <p>Shopify & GA4 Expert</p>
                            <ul class="navbar-nav social share-list ">
                                <li class="nav-item">
                                    <a href="https://www.facebook.com/profile.php?id=100068661500127" target="_blank"
                                        class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.instagram.com/tanvirhossen877/?hl=en" target="_blank"
                                        class="nav-link"><i class="icon-social-instagram"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/marketer-king/" target="_blank"
                                        class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.pinterest.com/tanvirhossen01610918622/" target="_blank"
                                        class="nav-link"><i class="icon-social-pinterest"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/musfiqur-rahman-shihab.webp"
                                alt="Musfiqur Rahman Shihab" class="lazyload person">
                            <h4>Musfiqur Rahman Shihab</h4>
                            <p>Software Developer</p>
                            <ul class="navbar-nav social share-list ">

                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/musfiquar-rahman-shiab-31190224b/"
                                        target="_blank" class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://github.com/shihab2004" target="_blank" class="nav-link"><i
                                            class="icon-social-github"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.facebook.com/musfiquer.rahman.5555" target="_blank"
                                        class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/mohammad-jonayat.webp"
                                style="width: 100px; height: 100px; object-fit: cover; object-position: top -17px right 0"
                                alt="Mohammad Jonayat" class="lazyload person">
                            <h4>Mohammad Jonayat</h4>
                            <p>FB & IG Ads Campaign</p>
                            <ul class="navbar-nav social share-list ">
                                {{-- <li class="nav-item">
                                    <a href="javascript:void(0)" target="_blank" class="nav-link"><i
                                            class="icon-social-instagram"></i></a>
                                </li> --}}
                                <li class="nav-item">
                                    <a href="https://www.facebook.com/mohammad.jonayet.58" target="_blank"
                                        class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/md-jonayat-7374ab287/" target="_blank"
                                        class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                {{--     <li class="nav-item">
                                    <a href="javascript:void(0)" target="_blank" class="nav-link"><i
                                            class="icon-social-twitter"></i></a>
                                </li> --}}
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/papiya-akter.webp" alt="Papiya Akter"
                                style="width: 100px; height: 100px; object-fit: cover; object-position: top;"
                                class="lazyload person">
                            <h4>Papiya Akter</h4>
                            <p>Social Media Manager</p>
                            <ul class="navbar-nav social share-list ">

                                <li class="nav-item">
                                    <a href="https://www.facebook.com/profile.php?id=100010325047424" target="_blank"
                                        class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href=" https://www.instagram.com/papiyaakter32/" target="_blank"
                                        class="nav-link"><i class="icon-social-instagram"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/papiya-akter32" target="_blank"
                                        class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://twitter.com/PapiyaAkter32" target="_blank" class="nav-link"><i
                                            class="icon-social-twitter"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 py-3">
                        <div class=" card h-100">
                            <img data-src="{{ asset('/') }}assets/experts/habiba-sultana.webp" alt="Habiba Sultana"
                                class="lazyload person">
                            <h4>Habiba Sultana</h4>
                            <p>SEO Expart</p>
                            <ul class="navbar-nav social share-list ">

                                <li class="nav-item">
                                    <a href="https://www.facebook.com/habibasultana001" target="_blank"
                                        class="nav-link"><i class="icon-social-facebook"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.instagram.com/habibasultana01/" target="_blank"
                                        class="nav-link"><i class="icon-social-instagram"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://www.linkedin.com/in/habiba-sultana-7303062a0/" target="_blank"
                                        class="nav-link"><i class="icon-social-linkedin"></i></a>
                                </li>
                                <li class="nav-item">
                                    <a href="https://twitter.com/habibasultanaa" target="_blank" class="nav-link"><i
                                            class="icon-social-twitter"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>




                </div>



                <div class="pt-3">
                    <a href="#contact" class="btn m-auto  dark-button smooth-anchor"><i class="icon-speech"></i>CONTACT
                        US</a>
                </div>


            </div>
        </div>
    </section>



    <!-- Protfolio(DegitalMarketing) -->
    <section class="portfolio-section  section-5 odd carousel showcase news all ">
        <div class="overflow-holder">
            <div class="container ">
                <div class="row intro">
                    <div class="col-12 col-md-9 align-self-center text-center text-md-left">
                        <h2 class="featured">Digital Marketing</h2>
                        <p>Recently Projects we have Done.</p>
                    </div>

                </div>
                <div class="swiper-container mid-slider items" data-init="false" data-perview="2">
                    <div class="swiper-wrapper ">
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-1.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-1.webp"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Shopify Sales.</h4>
                                    </div>
                                    {{-- <div class="card-footer d-lg-flex align-items-center justify-content-center">
                                        <a href="#" class="d-lg-flex align-items-center"><i
                                                class="icon-user"></i>John Doe</a>
                                        <a href="#" class="d-lg-flex align-items-center"><i
                                                class="icon-clock"></i>3 Days Ago</a>
                                    </div> --}}
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-2.webp">
                                <div class="image-over">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-2.webp"
                                        alt="Shopify Dropshipping">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Shopify Dropshipping.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-3.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-3.webp"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Shopify Sales.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-4.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-4.webp"
                                        alt="Google Ads Result.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Google Ads Result.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-5.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-5.webp"
                                        alt="Google Call Ads Result.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Google Call Ads Result.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-6.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-6.webp"
                                        alt="Google Best Result.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Google Best Result.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-7.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-7.webp"
                                        alt="Google adwords Result.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Google adwords Result.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-8.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-8.webp"
                                        alt="FB Ads Result.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">FB Ads Result.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-9.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-9.webp"
                                        alt="FB Carosul Ads.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">FB Carosul Ads.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-10.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-10.webp"
                                        alt="Facebook Ads.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Facebook Ads.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-11.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-11.webp"
                                        alt="FB Ads Active.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">FB Ads Active.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-12.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-12.webp"
                                        alt="Pixel Setup.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Pixel Setup.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-13.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-13.webp"
                                        alt="Pixel & Event Setup.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Pixel & Event Setup.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-14.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-14.webp"
                                        alt="Pro Google Ads Setup.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Pro Google Ads Setup.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-15.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-15.webp"
                                        alt="GA4 EEC Tracking.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">GA4 EEC Tracking.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works/work-16.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works/work-16.webp"
                                        alt="FB Conversion API.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">FB Conversion API.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>



                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Protfolio(Web development) -->
    <section class="portfolio-section  section-5 odd carousel showcase news  all " style="padding-top: 0px;">
        <div class="overflow-holder">
            <div class="container ">
                <div class="row intro">
                    <div class="col-12 col-md-9 align-self-center text-center text-md-left">
                        <h2 class="featured">Web Development</h2>
                        <p>Recently Projects we have Done.</p>
                    </div>

                </div>
                <div class="swiper-container mid-slider items" data-init="false" data-perview="2">
                    <div class="swiper-wrapper ">
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-1.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-1.webp"
                                        alt="Shopify Sales." style="object-position: center">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Custom desined booking website.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-2.webp">
                                <div class="image-over">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-2.webp"
                                        alt="Shopify Dropshipping">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Well organised admin dashboard.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-3.jpg">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-3.jpg"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Customer order page.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-4.jpg">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-4.jpg"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Customer Resource Management software.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-5.jpg">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-5.jpg"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Product page.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-6.jpg">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-6.jpg"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Admin Dashboard Panel.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-web/work-7.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-web/work-7.webp"
                                        alt="Shopify Sales.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Custom user profile page.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>




                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Protfolio(SEO ) -->
    <section class="portfolio-section  section-5 odd carousel showcase news featured all " style="padding-top: 0px;">
        <div class="overflow-holder">
            <div class="container ">
                <div class="row intro">
                    <div class="col-12 col-md-9 align-self-center text-center text-md-left">
                        <h2 class="featured">SEO</h2>
                        <p>Recently Projects we have Done.</p>
                    </div>

                </div>
                <div class="swiper-container mid-slider items" data-init="false" data-perview="2">
                    <div class="swiper-wrapper ">
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-seo/work-1.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-seo/work-1.webp"
                                        alt="Search console Report." style="object-position: center">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Search console Report.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-seo/work-2.webp">
                                <div class="image-over">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-seo/work-2.webp"
                                        alt="Search console Report">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Search console Report.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center item">
                            <div class="gallery-image row card p-0 text-center "
                                data-src="{{ asset('/') }}assets/works-seo/work-3.webp">
                                <div class="image-over ">
                                    <img class="lazyload" data-src="{{ asset('/') }}assets/works-seo/work-3.webp"
                                        alt="Search console Report.">
                                </div>
                                <div class="card-caption col-12 p-0">
                                    <div class="card-body">
                                        <h4 class="m-0">Search console Report.</h4>
                                    </div>

                                </div>
                            </div>
                        </div>



                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>



    <!-- Testimonials -->
    <section id="testimonials" class="section-7 carousel featured">
        <div class="overflow-holder">
            <div class="container">
                <div class="row text-center intro">
                    <div class="col-12">
                        <h2>Client Reviews</h2>
                        <p class="text-max-800">Our customers are satisfied with the work we do. The greatest
                            gratification is to receive recognition for what we have built. This motivates us to improve
                            even more.</p>
                    </div>
                </div>
                <div class="swiper-container mid-slider items">
                    <div class="swiper-wrapper">


                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-2.jpg" alt="Mary Evans"
                                        class="lazyload person">
                                    <h4>Mary Evans</h4>
                                    <p>The best degital marketing and website development team they are. if you need any
                                        digital service, just go with them</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-3.jpg" alt="robertdigaetano"
                                        class="lazyload person">
                                    <h4>robertdigaetano</h4>
                                    <p>Quick and super comprehensive. great communications.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-4.jpg" alt="mrsaaf"
                                        class="lazyload person">
                                    <h4>mrsaaf</h4>
                                    <p>Work done to the smallest detail, as requested. Quick and efficient work.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-5.jpg" alt="cgoreadabra"
                                        class="lazyload person">
                                    <h4>cgoreadabra</h4>
                                    <p>Very easy to work with. Delivered as promised.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-6.jpg" alt="johnhowze5"
                                        class="lazyload person">
                                    <h4>johnhowze5</h4>
                                    <p>This team did a great job for me I did see lots of improvement in sales so to there
                                        work i would differently recommend them.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-7.jpg" alt="margaretlar"
                                        class="lazyload person">
                                    <h4>margaretlar</h4>
                                    <p>Very good experience . The seller was professional and responded in a timely manner
                                        to questions. The links is very high quality and the website has good in its Google.
                                    </p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-8.jpg" alt="vivekshrestha19"
                                        class="lazyload person">
                                    <h4>vivekshrestha19</h4>
                                    <p>Amazing work! Looking forward to our continuing collaboration.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-9.jpg" alt="peetscoffee1"
                                        class="lazyload person">
                                    <h4>peetscoffee1</h4>
                                    <p>fast delivery well done.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-10.jpg" alt="kulture91"
                                        class="lazyload person">
                                    <h4>kulture91</h4>
                                    <p>Excellent service!</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-11.jpg" alt="calebfarley"
                                        class="lazyload person">
                                    <h4>calebfarley</h4>
                                    <p>Amazing work! Looking forward to our continuing collaboration.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide slide-center text-center item">
                            <div class="row card">
                                <div class="col-12">
                                    <img data-src="{{ asset('/') }}assets/clients/client-12.jpg" alt="barryhambeorv"
                                        class="lazyload person">
                                    <h4>barryhambeorv</h4>
                                    <p>Very satisfied with everything.</p>
                                    <ul class="navbar-nav social share-list ml-auto">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link"><i class="icon-star ml-2 mr-2"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>


    <!-- Contact -->
    <livewire:sections.contact-section />
@endsection
