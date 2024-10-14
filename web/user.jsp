<%-- 
    Document   : user
    Created on : 14-Oct-2024, 12:23:59 am
    Author     : zeelhiteshbhaigondaliya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%> 
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>USER DASHBOARD</title>

        <link rel="stylesheet" href="assets/css/style-starter.css">
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">
    </head>
    <body>

        <!-- header -->
        <header id="site-header" class="w3l-header fixed-top">
            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                    <h1><a class="navbar-brand" href="index.html"><span class="fa fa-play icon-log"
                                                                        aria-hidden="true"></span>
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
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="movies.html">Movies</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link" href="Contact_Us.html">Contact</a>
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

                        </div>
                    </div>
            </nav>
        </header>
        <!-- main-slider -->
        <section class="w3l-main-slider position-relative" id="home">
            <div class="companies20-content">
                <div class="owl-one owl-carousel owl-theme">
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view bg bg1" style="background-image: url('assets/images/transformers-one-web-1200x675.jpg');">
                                <div class="banner-info">
                                    <h3>Latest Movie Trailers</h3>
                                    <p> Transformers trailer.
                                        <span class="over-para">

                                        </span></p>
                                    <a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
                                        <span class="video-play-icon">
                                            <span class="fa fa-play"></span>
                                        </span>
                                        <h6>Watch Trailer</h6>
                                    </a>

                                    <div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
                                        <iframe width="560" height="315" src="https://www.youtube.com/embed/jaVcDaozGgc?si=I-qAHTUFxwVa46vg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view bg bg1" style="background-image: url('assets/images/stree_2_big.jpg');">
                                <div class="banner-info">
                                    <h3>Latest Online Movies</h3>
                                    <p> Stree 2.
                                        <span class="over-para">
                                        </span>
                                    </p>
                                    <a href="#small-dialog2" class="popup-with-zoom-anim play-view1">
                                        <span class="video-play-icon">
                                            <span class="fa fa-play"></span>
                                        </span>
                                        <h6>Watch Trailer</h6>
                                    </a>
                                    <div id="small-dialog2" class="zoom-anim-dialog mfp-hide">
                                        <iframe width="560" height="315" src="https://www.youtube.com/embed/KVnheXywIbY?si=EfmN7cTvCqJKZUGq" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    </div>
                                    <!-- <a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
                                            <span class="video-play-icon">
                                                    <span class="fa fa-play"></span>
                                            </span>
                                            <h6>Watch Trailer</h6>
                                    </a>

                                    <div id="small-dialog1" class="zoom-anim-dialog mfp-hide"></div>
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/NcCYq3bvlJM?si=_NWKwIwapVHhKG3C" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                </div> -->

                                    <!-- <div id="small-dialog1" class="zoom-anim-dialog mfp-hide"></div>
                                            <iframe width="560" height="315" src="https://youtu.be/KVnheXywIbY?si=tImWBqq7EE9_gJbp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view banner-top2 bg bg2" style="background-image: url('assets/images/joker-folie-a-deux-joker-2.jpg');">
                                <div class="banner-info">
                                    <h3>Latest Movie Trailers</h3>
                                    <p> Joker.<span class="over-para">
                                        </span></p>
                                    <a href="#small-dialog3" class="popup-with-zoom-anim play-view1">
                                        <span class="video-play-icon">
                                            <span class="fa fa-play"></span>
                                        </span>
                                        <h6>Watch Trailer</h6>
                                    </a>
                                    <div id="small-dialog3" class="zoom-anim-dialog mfp-hide">
                                        <iframe src="https://player.vimeo.com/video/389969665" allow="autoplay; fullscreen"
                                                allowfullscreen=""></iframe>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view bg bg1" style="background-image: url('assets/images/Munjya.jpeg');">
                                <div class="banner-info">
                                    <h3>Latest Online Movies</h3>
                                    <p>Munjya.<span class="over-para">

                                        </span></p>
                                    <a href="#small-dialog4" class="popup-with-zoom-anim play-view1">
                                        <span class="video-play-icon">
                                            <span class="fa fa-play"></span>
                                        </span>
                                        <h6>Watch Trailer</h6>
                                    </a>
                                    <div id="small-dialog4" class="zoom-anim-dialog mfp-hide">
                                        <iframe width="560" height="315" src="https://www.youtube.com/embed/qGb5aKEYR8Q?si=AVyY9XPYp3lKePq8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    </div>

                                </div>
                            </div>
                        </li>
                    </div>
                </div>
            </div>
        </section>
        <!-- main-slider -->
        <!--grids-sec1-->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-3">
                    <div class="headerhny-title">
                        <div class="w3l-title-grids">
                            <div class="headerhny-left">
                                <h3 class="hny-title">Popular Movies</h3>
                            </div>
                            <div class="headerhny-right text-lg-right">
                                <h4><a class="show-title" href="movies.html">Show all</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="w3l-populohny-grids">
                        <div class="item vhny-grid">
                            <div class="box16">
                                <a href="movies.html">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/dharamveer_2.jpg" alt="" style="height: 378px; width: 265px;">
                                    </figure>
                                    <div class="box-content">
                                        <h3 class="title">Dharamveer 2</h3>
                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 4min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                        </div>
                        <div class="item vhny-grid">
                            <div class="box16">
                                <a href="movies.html">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/The_Buckingham_Murders.jpeg" alt="" style="height: 378px; width: 265px;">
                                    </figure>
                                    <div class="box-content">
                                        <h3 class="title">The Buckingham Murders</h3>
                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 4min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                        </div>
                        <div class="item vhny-grid">
                            <div class="box16">
                                <a href="movies.html">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/Navra_Maza_Navsacha_2.jpg" alt="" style="height: 378px; width: 265px;">
                                    </figure>
                                    <div class="box-content">
                                        <h3 class="title">Gujjubhai Most Wanted</h3>
                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 4min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                        </div>
                        <div class="item vhny-grid">
                            <div class="box16">
                                <a href="movies.html">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/white_bird.jpg" alt="" style="height: 378px; width: 265px;">
                                    </figure>
                                    <div class="box-content">
                                        <h3 class="title">White Bird</h3>
                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 4min

                                            </span>
                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--//grids-sec1-->
        <!--grids-sec2-->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-3">
                    <div class="headerhny-title">
                        <div class="w3l-title-grids">
                            <div class="headerhny-left">
                                <h3 class="hny-title">New Releases</h3>
                            </div>
                            <div class="headerhny-right text-lg-right">
                                <h4><a class="show-title" href="movies.html">Show all</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="owl-three owl-carousel owl-theme">
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                                <a href="">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/p_deadpool_wolverine_snuggle_gen_v2_c251bde1.jpeg" style="height: 299.6px; width: 294px;" alt="">
                                    </figure>
                                    <div class="box-content">
                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 2 Hr 7 min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                            <h3> <a class="title-gd" href="">Deadpool & Wolverine</a></h3>
                            <p>A listless Wade Wilson toils away in civilian life. His days as the morally flexible mercenary, Deadpool, behind him." Ryan Reynolds as Deadpool/Wade Wilson and Hugh Jackman as Wolverine/Logan in "Deadpool & Wolverine.</p>
                            <!-- <div class="button-center text-center mt-4">
                                    <a href="movies.html" class="btn watch-button">Watch now</a>
                            </div> -->

                        </div>
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                                <a href="">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/Munjya_2024.jpg" style="height: 299.6px; width: 294px;" alt="">
                                    </figure>
                                    <div class="box-content">

                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 2 Hr 3 min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                            <h3> <a class="title-gd" href="">Munjya</a></h3>
                            <p>Munjya is a horror-comedy film that mixes elements of Konkani folklore with modern pop culture. It tells the story of Bittu (Abhay Verma), a college student who is plagued by nightmares and strange occurrences. These events are connected to Munjya, a lovelorn ghoul from the netherworld who seeks an unfulfilled desire from his past life</p>
                            <!-- <div class="button-center text-center mt-4">
                                    <a href="movies.html" class="btn watch-button">Watch now</a>
                            </div> -->
                        </div>
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                                <a href="">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/Kalki-2898-AD-2.jpg" style="height: 299.6px; width: 294px;" alt="">
                                    </figure>
                                    <div class="box-content">

                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 2 Hr 56 min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                            <h3> <a class="title-gd" href="">kalki</a></h3>
                            <p>Described as arriving at the end of the Kali Yuga (the current age of darkness), Kalki embodies hope and the restoration of dharma (righteousness). The film reimagines this prophecy in a futuristic setting, with themes of rebellion against oppression, the search for redemption amidst a decaying world, and the fight to restore a semblance of order.</p>
                            <!-- <div class="button-center text-center mt-4">
                                    <a href="movies.html" class="btn watch-button">Watch now</a>
                            </div> -->
                        </div>
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                                <a href="">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/godzila x kong.jpg" style="height: 299.6px; width: 294px;" alt="">
                                    </figure>
                                    <div class="box-content">

                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 55 min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                            <h3> <a class="title-gd" href="">Goddzilla x Kong</a></h3>
                            <p>Godzilla and the almighty Kong face a colossal threat hidden deep within the planet.</p>
                            <!-- <div class="button-center text-center mt-4">
                                    <a href="movies.html" class="btn watch-button">Watch now</a>
                            </div> -->

                        </div>
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                                <a href="">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/venom_3_3.jpg" style="height: 299.6px; width: 294px;" alt="">
                                    </figure>
                                    <div class="box-content">

                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 40 min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                            <h3> <a class="title-gd" href="">Venom 3</a></h3>
                            <p>Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.</p>
                            <!-- <div class="button-center text-center mt-4">
                                    <a href="movies.html" class="btn watch-button">Watch now</a>
                            </div> -->
                        </div>
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                                <a href="">
                                    <figure>
                                        <img class="img-fluid" src="assets/images/n6.jpg" alt="">
                                    </figure>
                                    <div class="box-content">

                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 26 min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <!-- <span class="fa fa-play video-icon" aria-hidden="true"></span> -->
                                </a>
                            </div>
                            <h3> <a class="title-gd" href="">Downhill</a></h3>
                            <p>Comedy Drama Barely escaping an avalanche during a family ski vacation in the Alps, a married couple is thrown into disarray as they are forced to reevaluate their lives and how they feel about each other.</p>
                            <!-- <div class="button-center text-center mt-4">
                                    <a href="movies.html" class="btn watch-button">Watch now</a>
                            </div> -->
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!--grids-sec2-->
        <!--mid-slider -->
        <section class="w3l-mid-slider position-relative">
            <div class="companies20-content">
                <div class="owl-mid owl-carousel owl-theme">
                    <div class="item">
                        <li>
                            <div class="slider-info mid-view bg bg2" style="background-image: url('assets/images/hq720\ \(1\).jpg');">
                                <div class="container">
                                    <div class="mid-info">
                                        <span class="sub-text">Comedy</span>
                                        <h3>Bhool Bhulaiyaa 3</h3>
                                        <p>2019 ‧ Comedy/Action ‧ 2h 3m</p>
                                        <a href="#dialog" class="popup-with-zoom-anim play-view1">
                                            <span class="fa fa-play"
                                                  aria-hidden="true">
                                            </span>
                                            Watch Trailer
                                        </a>
                                        <div id="dialog" class="zoom-anim-dialog mfp-hide">
                                            <iframe width="1490" height="500" src="https://www.youtube.com/embed/kN-ScVqz0wU?si=9OG-O6O3YU6vWaji" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>	
                                            </iframe>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info mid-view mid-top1 bg bg2" style="background-image: url('assets/images/deadpool-and-wolverine-home-ent-article-card.jpg');">
                                <div class="container">
                                    <div class="mid-info">
                                        <span class="sub-text">Adventure</span>
                                        <h3>Dolittle</h3>
                                        <p>2020 ‧ Family/Adventure ‧ 1h 41m</p>
                                        <a href="#dialog2" class="popup-with-zoom-anim play-view1">
                                            <span class="fa fa-play"
                                                  aria-hidden="true">
                                            </span>
                                            Watch Trailer
                                        </a>
                                        <div id="dialog2" class="zoom-anim-dialog mfp-hide">
                                            <iframe width="1490" height="500" src="https://www.youtube.com/embed/zjm6rDgKNMY?si=6b6_vKOPgVcSOinY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info mid-view mid-top2 bg bg2">
                                <div class="container">
                                    <div class="mid-info">
                                        <span class="sub-text">Action</span>
                                        <h3>Bad Boys for Life</h3>
                                        <p>2020 ‧ Comedy/Action ‧ 2h 4m</p>
                                        <a href="#dialog3" class="popup-with-zoom-anim play-view1">
                                            <span class="fa fa-play"
                                                  aria-hidden="true">
                                            </span>
                                            Watch Trailer
                                        </a>
                                        <div id="dialog3" class="zoom-anim-dialog mfp-hide">
                                            <iframe width="1490" height="500" src="https://www.youtube.com/embed/jKCj3XuPG8M?si=ha4-ipTqdPBfcVhm" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                </div>
            </div>
        </section>
        <!-- footer-66 -->
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
                                        <a href="movies.html"><img class="img-fluid" src="assets/images/Munjya.jpeg" style="height: 126.19px; width:265px ;"
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
                                            <li><a href="movies.html">Pune ,India</a></li>
                                            <!-- <li><a href="movies.html">France</a></li>
                                            <li><a href="movies.html">Taiwan</a></li>
                                            <li><a href="movies.html">United States</a></li>
                                            <li><a href="movies.html">Korea</a></li>
                                            <li><a href="movies.html">United Kingdom</a></li> -->
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
<!-- responsive tabs -->
<script src="assets/js/jquery-1.9.1.min.js"></script>
<script src="assets/js/easyResponsiveTabs.js"></script>
<script type="text/javascript">
                    $(document).ready(function () {
                        //Horizontal Tab
                        $('#parentHorizontalTab').easyResponsiveTabs({
                            type: 'default', //Types: default, vertical, accordion
                            width: 'auto', //auto or any width like 600px
                            fit: true, // 100% fit in a container
                            tabidentify: 'hor_1', // The tab groups identifier
                            activate: function (event) { // Callback function if tab is switched
                                var $tab = $(this);
                                var $info = $('#nested-tabInfo');
                                var $name = $('span', $info);
                                $name.text($tab.text());
                                $info.show();
                            }
                        });
                    });
</script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
                    $(document).ready(function () {
                        $('.owl-one').owlCarousel({
                            stagePadding: 280,
                            loop: true,
                            margin: 20,
                            nav: true,
                            responsiveClass: true,
                            autoplay: true,
                            autoplayTimeout: 5000,
                            autoplaySpeed: 1000,
                            autoplayHoverPause: false,
                            responsive: {
                                0: {
                                    items: 1,
                                    stagePadding: 40,
                                    nav: false
                                },
                                480: {
                                    items: 1,
                                    stagePadding: 60,
                                    nav: true
                                },
                                667: {
                                    items: 1,
                                    stagePadding: 80,
                                    nav: true
                                },
                                1000: {
                                    items: 1,
                                    nav: true
                                }
                            }
                        })
                    })
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
                    items: 5,
                    nav: true
                }
            }
        })
    })
</script>
<script>
    $(document).ready(function () {
        $('.owl-mid').owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- script for owlcarousel -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

        $('.popup-with-move-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-slide-bottom'
        });
    });
</script>
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
