<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Rental House</title>
        <meta charset="utf-8">
        <meta name="author" content="pixelhint.com">
        <meta name="description" content="La casa free real state fully responsive html5/css3 home page website template"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />

        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="register/style.css">	
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
    </head>
    <body>

        <section class="hero">
            <header>
                <div class="wrapper">
                    <img src="img/ssf-logo-house@2x (1).png" width="64" height="60" alt="logo" class="logo" />
                    <a href="#" class="hamburger"></a>
                    <nav>
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>

                        <a href="sell.jsp" class="sell_btn">Sell</a>
                        <a href="rent.jsp" class="rent_btn">Rent</a>

                    </nav>
                </div>
            </header><!--  end header section  -->

            <section class="caption">
                <h2 class="caption">Find Your Desire Home</h2>
                <h3 class="properties">Single Room - Double Room - Flat - Houses</h3>
            </section>
        </section><!--  end hero section  -->


        <section class="search">
            <div class="wrapper">
                <form action="#" method="post">
                    <input type="text" id="search" name="search" placeholder="What are you looking for?"  autocomplete="off"/>
                    <input type="submit" id="submit_search" name="submit_search"/>
                </form>
                <a href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
            </div>

            <div class="advanced_search">
                <div class="wrapper">
                    <span class="arrow"></span>
                    <form action="#" method="post">
                        <div class="search_fields">
                            <input type="text" class="float" id="min_price" name="min_price" placeholder="Min. Price"  autocomplete="off">

                            <hr class="field_sep float"/>

                            <input type="text" class="float" id="max_price" name="max_price" placeholder="Max. price"  autocomplete="off">
                        </div>
                        <input type="text" id="keywords" name="keywords" placeholder="Keywords"  autocomplete="off">
                        <input type="submit" id="submit_search" name="submit_search"/>
                    </form>
                </div>
            </div><!--  end advanced search section  -->
        </section><!--  end search section  -->


        <section class="listings">
            <div class="wrapper">
                <ul class="properties_list">
                    <li>
                        <a href="#">
                            <img src="img/property_1.jpg" alt="" title="" class="property_img"/>
                        </a>
                        <span class="price">Rs.4000</span>
                        <div class="property_details">
                            <h1>
                                <a href="#"></a>
                            </h1>
                            <h2>Single room, 1 bath ,24hr electricity... <span class="property_size"></span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/property_2.jpg" alt="" title="" class="property_img"/>
                        </a>
                        <span class="price">Rs.8000</span>
                        <div class="property_details">
                            <h1>
                                <a href="#"></a>
                            </h1>
                            <h2>Double room , 1 kitchen , 1 bath , 24hr electricity ... <span class="property_size"></span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/property_3.jpg" alt="" title="" class="property_img"/>
                        </a>
                        <span class="price">Rs.15000</span>
                        <div class="property_details">
                            <h1>
                                <a href="#"></a>
                            </h1>
                            <h2>4 rooms , 1 kitchen , 24hr electricity , 2 bathrooms , 24hr water... <span class="property_size"></span></h2>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/property_1.jpg" alt="" title="" class="property_img"/>
                        </a>
                        <span class="price">Rs.8000000</span>
                        <div class="property_details">
                            <h1>
                                <a href="#"></a>
                            </h1>
                            <h2>2 kitchens, 2 bedrooms, 2 bathrooms, 24hr electricity and water... <span class="property_size">(1 ropani)</span></h2>
                        </div>
                    </li>
                </ul>
                <div class="more_listing">
                    <a href="#" class="more_listing_btn">View More Listings</a>
                </div>
            </div>
        </section>	<!--  end listing section  -->

        <footer>
            <div class="wrapper footer">
                <ul>
                    <li class="links">
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">Terms</a></li>
                        </ul>
                    </li>

                    <li class="links">
                        <ul>
                            <li><a href="#">Single Room</a></li>
                            <li><a href="#">Double Rooms</a></li>
                            <li><a href="#">Flats</a></li>
                            <li><a href="#">Houses</a></li>
                            <li><a href="#">...</a></li>
                        </ul>
                    </li>

                    <li class="links">
                        <ul>
                            <li><a href="#">Kathmandu</a></li>
                            <li><a href="#">Lalitpur</a></li>
                            <li><a href="#">Bhaktapur</a></li>
                            <li><a href="#">...</a></li>
                        </ul>
                    </li>

                    <li class="about">
                        <ul>
                            <li><a href="http://facebook.com" class="facebook" target="_blank"></a></li>
                            <li><a href="http://twitter.com" class="twitter" target="_blank"></a></li>
                            <li><a href="http://plus.google.com" class="google" target="_blank"></a></li>
                            <li><a href="http://skype.com" class="skype"></a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="copyrights wrapper">
                <a>RentalHouse.com</a>
            </div>
        </footer><!--  end footer  -->

    </body>
</html>