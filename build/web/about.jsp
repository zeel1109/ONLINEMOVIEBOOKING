<%-- 
    Document   : about
    Created on : 15-Oct-2024, 7:41:54 am
    Author     : zeelhiteshbhaigondaliya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%> <!-- Import HttpSession -->
<%
    // Fetch the username from the session
    HttpSession session1 = request.getSession(false);
    String userName = (session != null) ? (String) session.getAttribute("name") : null;

    // If userName is null, redirect to the login page (optional)
    if (userName == null) {
        response.sendRedirect("sign_in.html");
   }
%>
<!doctype html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>About</title>

        <link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">

    </head>

    <body>
        <!-- header -->
        <header id="site-header" class="w3l-header fixed-top">
            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                     <h1><a class="navbar-brand" href="index.html"><img src="assets/images/Logo.jpg" alt="Your logo" title="Your logo" style="height:55px;" />
                            MovieXpress</a></h1>
                    <!-- if logo is image enable this   
                                            <a class="navbar-brand" href="#index.html">
                                                    <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                            </a> -->
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <!-- <span class="navbar-toggler-icon"></span> -->
                        <span class="fa icon-expand fa-bars"></span>
                        <span class="fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <b>Welcome, <%= userName%>!</b>  <!-- Display logged-in user's name -->
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="user.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="movies.jsp">Movies</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">About</a>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link" href="Contact_Us.jsp">Contact</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Logout">Logout</a>
                            </li>
                        </ul>

                        <!--/search-right-->
                        <!--/search-right-->
                        <div class="search-right">
                            <a href="#search" class="btn search-hny mr-lg-3 mt-lg-0 mt-4" title="search">Search <span
                                    class="fa fa-search ml-3" aria-hidden="true"></span></a>
                            <!-- search popup -->
                            <div id="search" class="pop-overlay">
                                <div class="popup">
                                    <form action="#" method="post" class="search-box">
                                        <input type="search" placeholder="Search your Keyword" name="search"
                                               required="required" autofocus="">
                                        <button type="submit" class="btn"><span class="fa fa-search"
                                                                                aria-hidden="true"></span></button>
                                    </form>
                                    <div class="browse-items">
                                        <h3 class="hny-title two mt-md-5 mt-4">Browse all:</h3>
                                        <ul class="search-items">
                                            <li><a href="movies.html">Action</a></li>
                                            <li><a href="movies.html">Drama</a></li>
                                            <li><a href="movies.html">Family</a></li>
                                            <li><a href="movies.html">Thriller</a></li>
                                            <li><a href="movies.html">Commedy</a></li>
                                            <li><a href="movies.html">Romantic</a></li>
                                            <li><a href="movies.html">Tv-Series</a></li>
                                            <li><a href="movies.html">Horror</a></li>
                                            <li><a href="movies.html">Action</a></li>
                                            <li><a href="movies.html">Drama</a></li>
                                            <li><a href="movies.html">Family</a></li>
                                            <li><a href="movies.html">Thriller</a></li>
                                            <li><a href="movies.html">Commedy</a></li>
                                            <li><a href="movies.html">Romantic</a></li>
                                            <li><a href="movies.html">Tv-Series</a></li>
                                            <li><a href="movies.html">Horror</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="close" href="#close">×</a>
                            </div>
                            <!-- /search popup -->
                            <!--/search-right-->
                            <div class="Login_SignUp" id="login"
                                 style="font-size: 2rem ; display: inline-block; position: relative;">
                                <!-- <li class="nav-item"> -->
                                <a class="nav-link" href="sign_in.html"><i class="fa fa-user-circle-o"></i></a>
                                <!-- </li> -->
                            </div>
                        </div>
                        <!-- toggle switch for light and dark theme -->
                        <!-- <div class="mobile-position">
                                <nav class="navigation">
                                        <div class="theme-switch-wrapper">
                                                <label class="theme-switch" for="checkbox">
                                                        <input type="checkbox" id="checkbox">
                                                        <div class="mode-container">
                                                                <i class="gg-sun"></i>
                                                                <i class="gg-moon"></i>
                                                        </div>
                                                </label>
                                        </div>
                                </nav>
                        </div> -->
                    </div>
            </nav>
        </header>
        <!--/breadcrumbs -->
        <div class="w3l-breadcrumbs">
            <nav id="breadcrumbs" class="breadcrumbs">
                <div class="container page-wrapper">
                    <a href="index.html">Home</a> » <span class="breadcrumb_last" aria-current="page">About</span>
                </div>
            </nav>
        </div>
        <!-- /about-->
        <div class="w3l-ab-grids py-5">

            <div class="container py-lg-4">
                <div class="row ab-grids-sec align-items-center">
                    <div class="col-lg-6 ab-right">
                        <img class="img-fluid" src="assets/images/banner1.jpg">
                    </div>
                    <div class="col-lg-6 ab-left pl-lg-4 mt-lg-0 mt-5">
                        <h3 class="hny-title">My Showz Entertainment</h3>
                        <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam id quisquam ipsam
                            molestiae ad eius accusantium? Nulla dolorem perferendis inventore! posuere cubilia Curae;
                            Nunc non risus in justo convallis feugiat.</p>
                        <div class="ready-more mt-4">
                            <a href="#" class="btn read-button">Read More <span class="fa fa-angle-double-right ml-2"
                                                                                aria-hidden="true"></span></a>
                        </div>
                    </div>
                </div>

                <div class="w3l-counter-stats-info text-center">
                    <div class="stats_left">
                        <div class="counter_grid">
                            <div class="icon_info">
                                <p class="counter">65</p>
                                <h4>Movies</h4>

                            </div>
                        </div>
                    </div>
                    <div class="stats_left">
                        <div class="counter_grid">
                            <div class="icon_info">
                                <p class="counter">165</p>
                                <h4>Shows</h4>

                            </div>
                        </div>
                    </div>
                    <div class="stats_left">
                        <div class="counter_grid">
                            <div class="icon_info">
                                <p class="counter">463</p>
                                <h4>Staff Members</h4>

                            </div>
                        </div>
                    </div>
                    <div class="stats_left">
                        <div class="counter_grid">
                            <div class="icon_info">
                                <p class="counter">5063</p>
                                <h4>No. of Users</h4>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- **************** -->
        <!-- Image Slider for MEET US Section-->

        <section class="w3l-clients" id="clients">
            <!-- /grids -->
            <!-- <div class="cusrtomer-layout py-5"> -->
            <div class="container py-lg-4">
                <!-- <div class="headerhny-title">
                        <h3 class="hny-title">Our Testimonials</h3>
                </div> -->
                <!-- /grids -->
                <div class="testimonial-width">
                    <div class="owl-clients owl-carousel owl-theme mb-lg-5">
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae laudantium
                                            voluptate rem ullam dolore!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="assets/images/team1.jpg" class="img-fluid" alt="/">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Johnson smith</h3>
                                            <p class="indentity">Washington</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae laudantium
                                            voluptate rem ullam dolore!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="assets/images/team2.jpg" class="img-fluid" alt="/">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Alexander leo</h3>
                                            <p class="indentity">Washington</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae laudantium
                                            voluptate rem ullam dolore!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="assets/images/team3.jpg" class="img-fluid" alt="/">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Roy Linderson</h3>
                                            <p class="indentity">Washington</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae laudantium
                                            voluptate rem ullam dolore!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="assets/images/team4.jpg" class="img-fluid" alt="/">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Mike Thyson</h3>
                                            <p class="indentity">Washington</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae laudantium
                                            voluptate rem ullam dolore!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="assets/images/team2.jpg" class="img-fluid" alt="/">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Laura gill</h3>
                                            <p class="indentity">Washington</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae laudantium
                                            voluptate rem ullam dolore!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="assets/images/team3.jpg" class="img-fluid" alt="/">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Smith Johnson</h3>
                                            <p class="indentity">Washington</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /grids -->
            </div>
        </section>

        <footer class="w3l-footer">
            <section class="footer-inner-main">
                <div class="footer-hny-grids py-5">
                    <div class="container py-lg-4">
                        <div class="text-txt">
                            <div class="right-side">
                                <div class="row footer-about">
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies.html"><img class="img-fluid" src="assets/images/transformers-one-web-1200x675.jpg" style="height: 126.19px; width:265px ;"
                                                                   alt=""></a>
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies.html"><img class="img-fluid" src="assets/images/stree_2_big.jpg"style="height: 126.19px; width:265px ;"
                                                                   alt=""></a>
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies.html"><img class="img-fluid" src="assets/images/joker-folie-a-deux-joker-2.jpg" style="height: 126.19px; width:265px ;"
                                                                   alt=""></a>
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies.html"><img class="img-fluid" src="assets/images/devara_poster.jpg" style="height: 126.19px; width:265px ;"
                                                                   alt=""></a>
                                    </div>
                                </div>
                                <div class="row footer-links">


                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Movies</h6>
                                        <ul>
                                            <li><a href="#">Movies</a></li>
                                            <li><a href="#">Videos</a></li>
                                            <li><a href="#">English Movies</a></li>
                                            <li><a href="#">Tailor</a></li>
                                            <li><a href="#">Upcoming Movies</a></li>
                                            <li><a href="Contact_Us.html">Contact Us</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Information</h6>
                                        <ul>
                                            <li><a href="index.html">Home</a> </li>
                                            <li><a href="about.html">About</a> </li>
                                            <li><a href="#">Tv Series</a> </li>
                                            <li><a href="#">Blogs</a> </li>
                                            <li><a href="sign_in.html">Login</a></li>
                                            <li><a href="Contact_Us.html">Contact</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Locations</h6>
                                        <ul>
                                            <li><a href="movies.html">Asia</a></li>
                                            <li><a href="movies.html">France</a></li>
                                            <li><a href="movies.html">Taiwan</a></li>
                                            <li><a href="movies.html">United States</a></li>
                                            <li><a href="movies.html">Korea</a></li>
                                            <li><a href="movies.html">United Kingdom</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Newsletter</h6>
                                        <form action="#" class="subscribe mb-3" method="post">
                                            <input type="email" name="email" placeholder="Your Email Address" required="">
                                            <button><span class="fa fa-envelope-o"></span></button>
                                        </form>
                                        <p>Enter your email and receive the latest news, updates and special offers from us.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <!-- <div class="below-section">
                        <div class="container">
                                <div class="copyright-footer">
                                        <div class="columns text-lg-left">
                                                <p>&copy; 2021 MyShowz. All rights reserved</p>
                                        </div>

                                        <ul class="social text-lg-right">
                                                <li><a href="#facebook"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                                                </li>
                                                <li><a href="#linkedin"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                                                </li>
                                                <li><a href="#twitter"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                                                </li>
                                                <li><a href="#google"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                                                </li>

                                        </ul>
                                </div>
                        </div>
                </div> -->
                <!-- move top -->
                <button onclick="topFunction()" id="movetop" title="Go to top">
                    <span class="fa fa-arrow-up" aria-hidden="true"></span>
                </button>
                <script>
                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("movetop").style.display = "block";
                        } else {
                            document.getElementById("movetop").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                <!-- /move top -->

            </section>
        </footer>
    </body>

</html>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!-- stats -->
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.countup.js"></script>
<script type="text/javascript" src='assets/js/swiper.min.js'></script>
<script>
                            $('.counter').countUp();
</script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script>
                            const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');
                            const currentTheme = localStorage.getItem('theme');

                            if (currentTheme) {
                                document.documentElement.setAttribute('data-theme', currentTheme);

                                switchTextColor(currentTheme);

                                if (currentTheme === 'dark') {
                                    toggleSwitch.checked = true;
                                }
                            }

                            function switchTextColor(currTheme) {

                                if (currTheme === 'light') {
                                    document.getElementById("swiper-container-h1").style.color = 'black';
                                    document.getElementById("details-h3-1").style.color = 'black';
                                    document.getElementById("details-h3-2").style.color = 'black';
                                    document.getElementById("details-h3-3").style.color = 'black';
                                    document.getElementById("details-h3-4").style.color = 'black';
                                    document.getElementById("details-h3-5").style.color = 'black';
                                    document.getElementById("details-h3-6").style.color = 'black';
                                } else {
                                    document.getElementById("swiper-container-h1").style.color = 'white';
                                    document.getElementById("details-h3-1").style.color = 'white';
                                    document.getElementById("details-h3-2").style.color = 'white';
                                    document.getElementById("details-h3-3").style.color = 'white';
                                    document.getElementById("details-h3-4").style.color = 'white';
                                    document.getElementById("details-h3-5").style.color = 'white';
                                    document.getElementById("details-h3-6").style.color = 'white';
                                }
                            }
                            toggleSwitch.addEventListener('change', switchTheme, false);
</script>
<script src="assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
                            $(document).ready(function () {
                                $('.owl-team').owlCarousel({
                                    loop: true,
                                    margin: 20,
                                    nav: false,
                                    responsiveClass: true,
                                    autoplay: false,
                                    autoplayTimeout: 5000,
                                    autoplaySpeed: 1000,
                                    autoplayHoverPause: false,
                                    responsive: {
                                        0: {
                                            items: 2,
                                            nav: false
                                        },
                                        480: {
                                            items: 2,
                                            nav: true
                                        },
                                        667: {
                                            items: 3,
                                            nav: true
                                        },
                                        1000: {
                                            items: 4,
                                            nav: true
                                        }
                                    }
                                })
                            })
</script>


<script>
    var swiper = new Swiper('.swiper-container', {
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows: true,
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
</script>
<script>
    $(document).ready(function () {
        $('.owl-three').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 2,
                    nav: false
                },
                480: {
                    items: 2,
                    nav: true
                },
                667: {
                    items: 3,
                    nav: true
                },
                1000: {
                    items: 6,
                    nav: true
                }
            }
        })
    })
</script>
<!-- for tesimonials carousel slider -->
<script>
    $(document).ready(function () {
        $(".owl-clients").owlCarousel({
            loop: true,
            margin: 40,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1,
                    nav: true
                },
                736: {
                    items: 2,
                    nav: false
                },
                1000: {
                    items: 3,
                    nav: true,
                    loop: false
                }
            }
        })
    })
</script>
<!-- script for owlcarousel -->
<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>
<script src="assets/js/bootstrap.min.js"></script>
