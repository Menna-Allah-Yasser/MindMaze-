<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/html" xml:lang="en-US" lang="en-US">


<!-- Mirrored from themesflat.co/html/ecomus/my-account-wishlist.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:32:59 GMT -->
<head>
    <meta charset="utf-8">
    <title>Ecomus - wishList</title>

    <meta name="author" content="themesflat.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

   <!-- font -->
   <link rel="stylesheet" href="fonts/fonts.css">
   <!-- Icons -->
   <link rel="stylesheet" href="fonts/font-icons.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/swiper-bundle.min.css">
   <link rel="stylesheet" href="css/animate.css">
   <link rel="stylesheet"type="text/css" href="css/styles.css"/>

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="images/logo/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="images/logo/favicon.png">


</head>

<body class="preload-wrapper">
    
    <div id="wrapper">

        <!-- header -->
        <header id="header" class="header-default">
            <div class="px_15 lg-px_40">
                <div class="row wrapper-header align-items-center">
                    <div class="col-xl-3 col-md-3 col-3">
                        <a href="${pageContext.request.contextPath}/home" class="logo-header">
                            <img src="images/logo/logo.svg" alt="logo" class="logo">
                        </a>
                    </div>
                    <div class="col-xl-6 col-md-6 col-6">
                    </div>
                    <div class="col-xl-3 col-md-3 col-3">
                        <ul class="nav-icon d-flex justify-content-end align-items-center gap-20">
                            <% Integer cartSize = (Integer) session.getAttribute("cart-size"); %>
                            <li class="nav-cart"><a href="${pageContext.request.contextPath}/cart" class="nav-icon-item"><i class="icon icon-bag"></i><span class="count-box"><%= cartSize != null ? cartSize : 0 %></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>



        <!-- page-title -->
        <div class="tf-page-title">
            <div class="container-full">
                <div class="heading text-center">Wishlist</div>
            </div>
        </div>
        <!-- /page-title -->
        
        <!-- page-cart -->
        <section class="flat-spacing-11">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <ul class="my-account-nav">
                            <li><a href="my-account.html" class="my-account-nav-item ">Account Details</a></li>
                            <li><a href="my-account-orders.html" class="my-account-nav-item">Orders</a></li>
                            <li><a href="my-account-edit.html" class="my-account-nav-item">Account Update</a></li>
                            <li><span class="my-account-nav-item active">Wishlist</span></li>
                            <li><a href="login.jsp" class="my-account-nav-item">Logout</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-9">
                        <div class="my-account-content account-wishlist">
                            <div class="grid-layout wrapper-shop" data-grid="grid-3">
                                <!-- card product 1 -->
                                <div class="card-product">
                                    <div class="card-product-wrapper">
                                        <a href="product-detail.html" class="product-img">
                                            <img class="lazyload img-product" data-src="images/products/orange-1.jpg" src="images/products/orange-1.jpg" alt="image-product">
                                            <img class="lazyload img-hover" data-src="images/products/white-1.jpg" src="images/products/white-1.jpg" alt="image-product">
                                        </a>
                                        <div class="list-product-btn absolute-2">
                                            <a href="#quick_add" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                                <span class="icon icon-bag"></span>
                                                <span class="tooltip">Quick Add</span>
                                            </a>
                                            <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                                <span class="icon icon-heart"></span>
                                                <span class="tooltip">Add to Wishlist</span>
                                                <span class="icon icon-delete"></span>
                                            </a>
                                            <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                                <span class="icon icon-compare"></span>
                                                <span class="tooltip">Add to Compare</span>
                                                <span class="icon icon-check"></span>
                                            </a>
                                            <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                                <span class="icon icon-view"></span>
                                                <span class="tooltip">Quick View</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="card-product-info">
                                        <a href="product-detail.html" class="title link">Ribbed Tank Top</a>
                                        <span class="price">$16.95</span>
                                        <ul class="list-color-product">
                                            <li class="list-color-item color-swatch active">
                                                <span class="tooltip">Orange</span>
                                                <span class="swatch-value bg_orange-3"></span>
                                                <img class="lazyload" data-src="images/products/orange-1.jpg" src="images/products/orange-1.jpg" alt="image-product">
                                            </li>
                                            <li class="list-color-item color-swatch">
                                                <span class="tooltip">Black</span>
                                                <span class="swatch-value bg_dark"></span>
                                                <img class="lazyload" data-src="images/products/black-1.jpg" src="images/products/4/1.jpg" alt="image-product">
                                            </li>
                                            <li class="list-color-item color-swatch">
                                                <span class="tooltip">White</span>
                                                <span class="swatch-value bg_white"></span>
                                                <img class="lazyload" data-src="images/products/white-1.jpg" src="images/products/white-1.jpg" alt="image-product">
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- card product 2 -->
                                <div class="card-product">
                                    <div class="card-product-wrapper">
                                        <a href="product-detail.html" class="product-img">
                                            <img class="lazyload img-product" data-src="images/products/brown.jpg" src="images/products/brown.jpg" alt="image-product">
                                            <img class="lazyload img-hover" data-src="images/products/purple.jpg" src="images/products/purple.jpg" alt="image-product">
                                        </a>
                                        <div class="list-product-btn">
                                            <a href="#quick_add" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                                <span class="icon icon-bag"></span>
                                                <span class="tooltip">Quick Add</span>
                                            </a>
                                            <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                                <span class="icon icon-heart"></span>
                                                <span class="tooltip">Add to Wishlist</span>
                                                <span class="icon icon-delete"></span>
                                            </a>
                                            <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                                <span class="icon icon-compare"></span>
                                                <span class="tooltip">Add to Compare</span>
                                                <span class="icon icon-check"></span>
                                            </a>
                                            <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                                <span class="icon icon-view"></span>
                                                <span class="tooltip">Quick View</span>
                                            </a>
                                        </div>
                                        <div class="size-list">
                                            <span>M</span>
                                            <span>L</span>
                                            <span>XL</span>
                                        </div>
                                        <div class="countdown-box">
                                            <div class="js-countdown" data-timer="1007500" data-labels="d :,h :,m :,s"></div>
                                        </div>
                                        <div class="on-sale-wrap text-end">
                                            <div class="on-sale-item">-33%</div>
                                        </div>
                                    </div>
                                    <div class="card-product-info">
                                        <a href="product-detail.html" class="title link">Ribbed modal T-shirt</a>
                                        <span class="price">From $18.95</span>
                                        <ul class="list-color-product">
                                            <li class="list-color-item color-swatch active">
                                                <span class="tooltip">Brown</span>
                                                <span class="swatch-value bg_brown"></span>
                                                <img class="lazyload" data-src="images/products/brown.jpg" src="images/products/brown.jpg" alt="image-product">
                                            </li>
                                            <li class="list-color-item color-swatch">
                                                <span class="tooltip">Light Purple</span>
                                                <span class="swatch-value bg_purple"></span>
                                                <img class="lazyload" data-src="images/products/purple.jpg" src="images/products/purple.jpg" alt="image-product">
                                            </li>
                                            <li class="list-color-item color-swatch">
                                                <span class="tooltip">Light Green</span>
                                                <span class="swatch-value bg_light-green"></span>
                                                <img class="lazyload" data-src="images/products/green.jpg" src="images/products/green.jpg" alt="image-product">
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- card product 3 -->
                                <div class="card-product">
                                    <div class="card-product-wrapper">
                                        <a href="product-detail.html" class="product-img">
                                            <img class="lazyload img-product" data-src="images/products/white-3.jpg" src="images/products/white-3.jpg" alt="image-product">
                                            <img class="lazyload img-hover" data-src="images/products/white-4.jpg" src="images/products/white-4.jpg" alt="image-product">
                                        </a>
                                        <div class="list-product-btn absolute-2">
                                            <a href="#shoppingCart" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                                <span class="icon icon-bag"></span>
                                                <span class="tooltip">Add to cart</span>
                                            </a>
                                            <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                                <span class="icon icon-heart"></span>
                                                <span class="tooltip">Add to Wishlist</span>
                                                <span class="icon icon-delete"></span>
                                            </a>
                                            <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                                <span class="icon icon-compare"></span>
                                                <span class="tooltip">Add to Compare</span>
                                                <span class="icon icon-check"></span>
                                            </a>
                                            <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                                <span class="icon icon-view"></span>
                                                <span class="tooltip">Quick View</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="card-product-info">
                                        <a href="product-detail.html" class="title link">Oversized Printed T-shirt</a>
                                        <span class="price">$10.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- page-cart -->

        <!-- footer -->
        <footer id="footer" class="footer">
            <div class="footer-wrap">
                <!-- <div class="footer-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3 col-md-6 col-12">
                                <div class="footer-infor">
                                    <div class="footer-logo">
                                        <a href="index.html">
                                            <img src="images/logo/logo.svg" alt="">
                                        </a>
                                    </div>
                                    <ul>
                                        <li>
                                            <p>Address: 1234 Fashion Street, Suite 567, <br> New York, NY 10001</p>
                                        </li>
                                        <li>
                                            <p>Email: <a href="#">info@fashionshop.com</a></p>
                                        </li>
                                        <li>
                                            <p>Phone: <a href="#">(212) 555-1234</a></p>
                                        </li>
                                    </ul>
                                    <a href="contact-1.html" class="tf-btn btn-line">Get direction<i class="icon icon-arrow1-top-left"></i></a>
                                    <ul class="tf-social-icon d-flex gap-10">
                                        <li><a href="#" class="box-icon w_34 round social-facebook border-line-black"><i class="icon fs-14 icon-fb"></i></a></li>
                                        <li><a href="#" class="box-icon w_34 round social-twiter border-line-black"><i class="icon fs-12 icon-Icon-x"></i></a></li>
                                        <li><a href="#" class="box-icon w_34 round social-instagram border-line-black"><i class="icon fs-14 icon-instagram"></i></a></li>
                                        <li><a href="#" class="box-icon w_34 round social-tiktok border-line-black"><i class="icon fs-14 icon-tiktok"></i></a></li>
                                        <li><a href="#" class="box-icon w_34 round social-pinterest border-line-black"><i class="icon fs-14 icon-pinterest-1"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6 col-12 footer-col-block">
                                <div class="footer-heading footer-heading-desktop">
                                    <h6>Help</h6>
                                </div>
                                <div class="footer-heading footer-heading-moblie">
                                    <h6>Help</h6>
                                </div>
                                <ul class="footer-menu-list tf-collapse-content">
                                    <li>
                                        <a href="privacy-policy.html" class="footer-menu_item">Privacy Policy</a>
                                    </li>
                                    <li> 
                                        <a href="delivery-return.html" class="footer-menu_item">  Returns + Exchanges </a>
                                    </li>
                                    <li> 
                                        <a href="shipping-delivery.html" class="footer-menu_item">Shipping</a>
                                    </li>
                                    <li> 
                                        <a href="terms-conditions.html" class="footer-menu_item">Terms &amp; Conditions</a>
                                    </li>
                                    <li> 
                                        <a href="faq-1.html" class="footer-menu_item">FAQ’s</a>
                                    </li>
                                    <li> 
                                        <a href="compare.html" class="footer-menu_item">Compare</a>
                                    </li>
                                    <li> 
                                        <a href="wishlist.html" class="footer-menu_item">My Wishlist</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-3 col-md-6 col-12 footer-col-block">
                                <div class="footer-heading footer-heading-desktop">
                                    <h6>About us</h6>
                                </div>
                                <div class="footer-heading footer-heading-moblie">
                                    <h6>About us</h6>
                                </div>
                                <ul class="footer-menu-list tf-collapse-content">
                                    <li>
                                        <a href="about-us.html" class="footer-menu_item">Our Story</a>
                                    </li>
                                    <li> 
                                        <a href="our-store.html" class="footer-menu_item">Visit Our Store</a>
                                    </li>
                                    <li> 
                                        <a href="contact-1.html" class="footer-menu_item">Contact Us</a>
                                    </li>
                                    <li> 
                                        <a href="login.jsp" class="footer-menu_item">Account</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-3 col-md-6 col-12">
                                <div class="footer-newsletter footer-col-block">
                                    <div class="footer-heading footer-heading-desktop">
                                        <h6>Sign Up for Email</h6>
                                    </div>
                                    <div class="footer-heading footer-heading-moblie">
                                        <h6>Sign Up for Email</h6>
                                    </div>
                                    <div class="tf-collapse-content">
                                        <div class="footer-menu_item">Sign up to get first dibs on new arrivals, sales, exclusive content, events and more!</div>
                                        <form class="form-newsletter" id="subscribe-form" action="#" method="post" accept-charset="utf-8" data-mailchimp="true">
                                            <div id="subscribe-content">
                                                <fieldset class="email">
                                                    <input type="email" name="email-form" id="subscribe-email" placeholder="Enter your email...." tabindex="0" aria-required="true">
                                                </fieldset>
                                                <div class="button-submit">
                                                    <button id="subscribe-button" class="tf-btn btn-sm radius-3 btn-fill btn-icon animate-hover-btn" type="button">Subscribe<i class="icon icon-arrow1-top-left"></i></button>
                                                </div>
                                            </div>
                                            <div id="subscribe-msg"></div>
                                        </form>
                                        <div class="tf-cur">
                                            <div class="tf-currencies">
                                                <select class="image-select center style-default type-currencies">
                                                    <option data-thumbnail="images/country/fr.svg">EUR <span>€ | France</span></option>
                                                    <option data-thumbnail="images/country/de.svg">EUR <span>€ | Germany</span></option>
                                                    <option selected data-thumbnail="images/country/us.svg">USD <span>$ | United States</span></option>
                                                    <option data-thumbnail="images/country/vn.svg">VND <span>₫ | Vietnam</span></option>
                                                </select>
                                            </div>
                                            <div class="tf-languages">
                                                <select class="image-select center style-default type-languages">
                                                    <option>English</option>
                                                    <option>العربية</option>
                                                    <option>简体中文</option>
                                                    <option>اردو</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="footer-bottom-wrap d-flex gap-20 flex-wrap justify-content-between align-items-center">
                                    <div class="footer-menu_item">© 2024 Ecomus Store. All Rights Reserved</div>
                                    <div class="tf-payment">
                                        <img src="images/payments/visa.png" alt="">
                                        <img src="images/payments/img-1.png" alt="">
                                        <img src="images/payments/img-2.png" alt="">
                                        <img src="images/payments/img-3.png" alt="">
                                        <img src="images/payments/img-4.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /footer -->

    </div>

    <!-- gotop -->
    <div class="progress-wrap">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 286.138;"></path>
        </svg>
    </div>
    <!-- /gotop -->
    

    





    <!-- Javascript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/carousel.js"></script>
    
    <script type="text/javascript" src="js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="js/lazysize.min.js"></script>
    <script type="text/javascript" src="js/count-down.js"></script>   
    <script type="text/javascript" src="js/wow.min.js"></script>   
    <script type="text/javascript" src="js/multiple-modal.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/search.js"></script>

</body>


<!-- Mirrored from themesflat.co/html/ecomus/my-account-wishlist.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:32:59 GMT -->
</html>