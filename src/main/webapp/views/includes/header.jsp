<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>
<!DOCTYPE html><html class="no-js" lang="en"><head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title><c:out value="${pageTitle != null ? pageTitle : 'My App'}" /></title>
<meta name="robots" content="noindex, follow">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="<c:url value='/assets/images/favicon.ico' />">
<link rel="stylesheet" href="<c:url value='/assets/css/vendor/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/vendor/font-awesome.min.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/vendor/simple-line-icons.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/plugins/animation.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/plugins/slick.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/plugins/animation.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/plugins/nice-select.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/plugins/fancy-box.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/plugins/jqueryui.min.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/style.css' />">
<link rel="stylesheet" href="<c:url value='/assets/css/custom.css' />">
<!--<link rel="stylesheet" href="assets/css/style.min.css">-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">


</head>

<body>
<div class="main-wrapper">
    <!--  Header Start -->
    <header class="header">
        <!-- Header Top Start -->
        <div class="header-top-area d-none d-lg-block text-color-white bg-gren border-bm-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center">
                                <li class="language">English <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <li><a href="#">English</a></li>
                                        <li><a href="#">French</a></li>
                                    </ul>
                                </li>
                                <li class="curreny-wrap">Currency <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list curreny-list">
                                        <li><a href="#">$ USD</a></li>
                                        <li><a href="#"> € EURO</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="top-info-wrap text-end">
                            <ul class="my-account-container">
                                <c:choose>
                                    <c:when test="${empty sessionScope.currentUser}">
                                        <li><a href="<c:url value='/login'/>">Login</a></li>
                                        <li><a href="<c:url value='/register'/>">Register</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a href="<c:url value='/account'/>">My account</a></li>
                                        <li><a href="<c:url value='/cart'/>">Cart</a></li>
                                        <li><a href="<c:url value='/wishlist'/>">Wishlist</a></li>
                                        <li><a href="<c:url value='/checkout'/>">Checkout</a></li>
                                        <li><a href="<c:url value='/logout'/>">Logout</a></li>
                                    </c:otherwise>
                                </c:choose>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Header Top End -->

        <!-- haeader Mid Start -->
        <div class="haeader-mid-area bg-gren border-bm-1 d-none d-lg-block ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-5">
                        <div class="logo-area">
                            <a href="<c:url value='/home' />"><img src="<c:url value='/assets/images/logo/logo.png' />" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="search-box-wrapper">
                            <div class="search-box-inner-wrap">
                                <form class="search-box-inner">
                                    <div class="search-field-wrap">
                                        <input type="text" class="search-field" placeholder="Search product...">

                                        <div class="search-btn">
                                            <button><i class="icon-magnifier"></i></button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="right-blok-box text-white d-flex">

                            <div class="user-wrap">
                                <a href="wishlist.html"><span class="cart-total">2</span> <i class="icon-heart"></i></a>
                            </div>

                            <div class="shopping-cart-wrap">
                                <a href="#"><i class="icon-basket-loaded"></i><span class="cart-total">2</span></a>
                                <ul class="mini-cart">
                                    <li class="cart-item">
                                        <div class="cart-image">
                                            <a href="product-details.html"><img alt="" src="<c:url value='/assets/images/product/product-02.png' />"></a>
                                        </div>
                                        <div class="cart-title">
                                            <a href="product-details.html">
                                                <h4>Product Name 01</h4>
                                            </a>
                                            <div class="quanti-price-wrap">
                                                <span class="quantity">1 ×</span>
                                                <div class="price-box"><span class="new-price">$130.00</span></div>
                                            </div>
                                            <a class="remove_from_cart" href="#"><i class="icon_close"></i></a>
                                        </div>
                                    </li>
                                    <li class="cart-item">
                                        <div class="cart-image">
                                            <a href="product-details.html"><img alt="" src="<c:url value='/assets/images/product/product-03.png' />"></a>
                                        </div>
                                        <div class="cart-title">
                                            <a href="product-details.html">
                                                <h4>Product Name 03</h4>
                                            </a>
                                            <div class="quanti-price-wrap">
                                                <span class="quantity">1 ×</span>
                                                <div class="price-box"><span class="new-price">$130.00</span></div>
                                            </div>
                                            <a class="remove_from_cart" href="#"><i class="icon-trash icons"></i></a>
                                        </div>
                                    </li>
                                    <li class="subtotal-box">
                                        <div class="subtotal-title">
                                            <h3>Sub-Total :</h3><span>$ 260.99</span>
                                        </div>
                                    </li>
                                    <li class="mini-cart-btns">
                                        <div class="cart-btns">
                                            <a href="cart.html">View cart</a>
                                            <a href="checkout.html">Checkout</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- haeader Mid End -->

        <!-- haeader bottom Start -->
        <div class="haeader-bottom-area bg-gren header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12 d-none d-lg-block">
                        <div class="main-menu-area white_text">
                            <nav class="main-navigation text-center">
                                <ul>
                                    <li class="active"><a href="/">Home </a></li>
                                    <li><a href="blog.html">Blog <i class="fa fa-angle-down"></i></a>

                                        <ul class="sub-menu">
                                            <li><a href="blog.html">Blog Left Sidebar</a></li>
                                            <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                            <li><a href="blog-grid.html">Blog Grid Page</a></li>
                                            <li><a href="blog-largeimage.html">Blog Large Image</a></li>
                                            <li><a href="blog-details.html">Blog Details Page</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="#">Pages <i class="fa fa-angle-down"></i></a>
                                        <ul class="sub-menu">
                                            <li><a href="frequently-questions.html">FAQ</a></li>
                                            <li><a href="my-account.html">My Account</a></li>
                                            <li><a href="login-register.html">login & register</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="contact-us.html">Contact</a></li>
                                </ul>
                            </nav>

                        </div>
                    </div>

                    <div class="col-5 col-md-6 d-block d-lg-none">
                        <div class="logo"><a href="index.html"><img src="<c:url value='/assets/images/logo/logo.png' />" alt=""></a></div>
                    </div>


                    <div class="col-lg-3 col-md-6 col-7 d-block d-lg-none">
                        <div class="right-blok-box text-white d-flex">

                            <div class="user-wrap">
                                <a href="wishlist.html"><span class="cart-total">2</span> <i class="icon-heart"></i></a>
                            </div>

                            <div class="shopping-cart-wrap">
                                <a href="#"><i class="icon-basket-loaded"></i><span class="cart-total">2</span></a>
                                <ul class="mini-cart">
                                    <li class="cart-item">
                                        <div class="cart-image">
                                            <a href="product-details.html"><img alt="" src="<c:url value='/assets/images/product/product-02.png' />"></a>
                                        </div>
                                        <div class="cart-title">
                                            <a href="product-details.html">
                                                <h4>Product Name 01</h4>
                                            </a>
                                            <div class="quanti-price-wrap">
                                                <span class="quantity">1 ×</span>
                                                <div class="price-box"><span class="new-price">$130.00</span></div>
                                            </div>
                                            <a class="remove_from_cart" href="#"><i class="fa fa-times"></i></a>
                                        </div>
                                    </li>
                                    <li class="cart-item">
                                        <div class="cart-image">
                                            <a href="product-details.html"><img alt="" src="<c:url value='/assets/images/product/product-03.png' />"></a>
                                        </div>
                                        <div class="cart-title">
                                            <a href="product-details.html">
                                                <h4>Product Name 03</h4>
                                            </a>
                                            <div class="quanti-price-wrap">
                                                <span class="quantity">1 ×</span>
                                                <div class="price-box"><span class="new-price">$130.00</span></div>
                                            </div>
                                            <a class="remove_from_cart" href="#"><i class="icon-trash icons"></i></a>
                                        </div>
                                    </li>
                                    <li class="subtotal-box">
                                        <div class="subtotal-title">
                                            <h3>Sub-Total :</h3><span>$ 260.99</span>
                                        </div>
                                    </li>
                                    <li class="mini-cart-btns">
                                        <div class="cart-btns">
                                            <a href="cart.html">View cart</a>
                                            <a href="checkout.html">Checkout</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="mobile-menu-btn d-block d-lg-none">
                                <div class="off-canvas-btn">
                                    <a href="#"><img src="<c:url value='/assets/images/icon/bg-menu.png' />" alt=""></a>
                                </div>
                            </div>

                        </div>
                    </div>



                </div>
            </div>
        </div>
        <!-- haeader bottom End -->

        <!-- off-canvas menu start -->
        <aside class="off-canvas-wrapper">
            <div class="off-canvas-overlay"></div>
            <div class="off-canvas-inner-content">
                <div class="btn-close-off-canvas">
                    <i class="fa fa-times"></i>
                </div>

                <div class="off-canvas-inner">

                    <div class="search-box-offcanvas">
                        <form>
                            <input type="text" placeholder="Search product...">
                            <button class="search-btn"><i class="icon-magnifier"></i></button>
                        </form>
                    </div>

                    <!-- mobile menu start -->
                    <div class="mobile-navigation">

                        <!-- mobile menu navigation start -->
                        <nav>
                            <ul class="mobile-menu">
                                <li class="menu-item-has-children"><a href="#">Home</a>
                                    <ul class="dropdown">
                                        <li><a href="index.html">Home Page 1</a></li>
                                        <li><a href="index-2.html">Home Page 2</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">Shop</a>
                                    <ul class="megamenu dropdown">
                                        <li class="mega-title has-children"><a href="#">Shop Layouts</a>
                                            <ul class="dropdown">
                                                <li><a href="shop.html">Shop Left Sidebar</a></li>
                                                <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                                <li><a href="shop-list-left.html">Shop List Left Sidebar</a></li>
                                                <li><a href="shop-list-right.html">Shop List Right Sidebar</a></li>
                                                <li><a href="shop-fullwidth.html">Shop Full Width</a></li>
                                            </ul>
                                        </li>
                                        <li class="mega-title has-children"><a href="#">Product Details</a>
                                            <ul class="dropdown">
                                                <li><a href="product-details.html">Single Product Details</a></li>
                                                <li><a href="variable-product-details.html">Variable Product Details</a></li>
                                                <li><a href="affiliate-product-details.html">affiliatel Product Details</a></li>
                                                <li><a href="gallery-product-details.html">Gallery Product Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="mega-title has-children"><a href="#">Shop Pages</a>
                                            <ul class="dropdown">
                                                <li><a href="error404.html">Error 404</a></li>
                                                <li><a href="compare.html">Compare Page</a></li>
                                                <li><a href="cart.html">Cart Page</a></li>
                                                <li><a href="checkout.html">Checkout Page</a></li>
                                                <li><a href="wishlist.html">Wish List Page</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children "><a href="#">Blog</a>
                                    <ul class="dropdown">
                                        <li><a href="blog.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-grid.html">Blog Grid Page</a></li>
                                        <li><a href="blog-largeimage.html">Blog Large Image</a></li>
                                        <li><a href="blog-details.html">Blog Details Page</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children "><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="frequently-questions.html">FAQ</a></li>
                                        <li><a href="my-account.html">My Account</a></li>
                                        <li><a href="login-register.html">login & register</a></li>
                                    </ul>
                                </li>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                            </ul>
                        </nav>
                        <!-- mobile menu navigation end -->
                    </div>
                    <!-- mobile menu end -->


                    <div class="header-top-settings offcanvas-curreny-lang-support">
                        <h5>My Account</h5>
                        <ul class="nav align-items-center">
                            <li class="language">English <i class="fa fa-angle-down"></i>
                                <ul class="dropdown-list">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                </ul>
                            </li>
                            <li class="curreny-wrap">Currency <i class="fa fa-angle-down"></i>
                                <ul class="dropdown-list curreny-list">
                                    <li><a href="#">$ USD</a></li>
                                    <li><a href="#"> € EURO</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <!-- offcanvas widget area start -->
                    <div class="offcanvas-widget-area">
                        <div class="top-info-wrap text-left text-black">
                            <h5>My Account</h5>
                            <ul class="offcanvas-account-container">
                                <li><a href="my-account.html">My account</a></li>
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- offcanvas widget area end -->
                </div>
            </div>
        </aside>
        <!-- off-canvas menu end -->
    </header>