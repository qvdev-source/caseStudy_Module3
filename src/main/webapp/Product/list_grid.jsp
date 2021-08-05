
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="max-age=604800" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Website title - bootstrap html template</title>

    <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">

    <!-- jQuery -->
    <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

    <!-- Bootstrap4 files-->
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

    <!-- Font awesome 5 -->
    <link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

    <!-- custom style -->
    <link href="css/ui.css" rel="stylesheet" type="text/css"/>
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />

    <!-- custom javascript -->
    <script src="js/script.js" type="text/javascript"></script>

</head>
<body>


<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-2 col-lg-3 col-md-12">
                    <a href="http://bootstrap-ecommerce.com" class="brand-wrap">
                        <img class="logo" src="images/logo.png">
                    </a> <!-- brand-wrap.// -->
                </div>
                <div class="col-xl-6 col-lg-5 col-md-6">
                    <form action="#" class="search-header">
                        <div class="input-group w-100">
                            <select class="custom-select border-right"  name="category_name">
                                <option value="">All type</option><option value="codex">Special</option>
                                <option value="comments">Only best</option>
                                <option value="content">Latest</option>
                            </select>
                            <input type="text" class="form-control" placeholder="Search">

                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">
                                    <i class="fa fa-search"></i> Search
                                </button>
                            </div>
                        </div>
                    </form> <!-- search-wrap .end// -->
                </div> <!-- col.// -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="widgets-wrap float-md-right">
                        <div class="widget-header mr-3">
                            <a href="#" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-user"></i>
                                    <span class="notify">3</span>
                                </div>
                                <small class="text"> My profile </small>
                            </a>
                        </div>
                        <div class="widget-header mr-3">
                            <a href="#" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-comment-dots"></i>
                                    <span class="notify">1</span>
                                </div>
                                <small class="text"> Message </small>
                            </a>
                        </div>
                        <div class="widget-header mr-3">
                            <a href="#" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-store"></i>
                                </div>
                                <small class="text"> Orders </small>
                            </a>
                        </div>
                        <div class="widget-header">
                            <a href="#" class="widget-view">
                                <div class="icon-area">
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                                <small class="text"> Cart </small>
                            </a>
                        </div>
                    </div> <!-- widgets-wrap.// -->
                </div> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- container.// -->
    </section> <!-- header-main .// -->

    <nav class="navbar navbar-main navbar-expand-lg border-bottom">
        <div class="container">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="main_nav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-bars text-muted mr-2"></i> Demo pages </a>
                        <div class="dropdown-menu dropdown-large">
                            <nav class="row">
                                <div class="col-6">
                                    <a href="page-index-1.html">Home page 1</a>
                                    <a href="page-index-2.html">Home page 2</a>
                                    <a href="page-category.html">All category</a>
                                    <a href="page-listing-large.html">Listing list</a>
                                    <a href="page-listing-grid.html">Listing grid</a>
                                    <a href="page-shopping-cart.html">Shopping cart</a>
                                    <a href="page-detail-product.html">Product detail</a>
                                    <a href="page-content.html">Page content</a>
                                    <a href="page-user-login.html">Page login</a>
                                    <a href="page-user-register.html">Page register</a>
                                </div>
                                <div class="col-6">
                                    <a href="page-profile-main.html">Profile main</a>
                                    <a href="page-profile-orders.html">Profile orders</a>
                                    <a href="page-profile-seller.html">Profile seller</a>
                                    <a href="page-profile-wishlist.html">Profile wishlist</a>
                                    <a href="page-profile-setting.html">Profile setting</a>
                                    <a href="page-profile-address.html">Profile address</a>
                                    <a href="page-components.html" target="_blank">More components</a>
                                </div>
                            </nav> <!--  row end .// -->
                        </div> <!--  dropdown-menu dropdown-large end.// -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ready to ship</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trade shows</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sell with us</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-md-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Get the app</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" data-toggle="dropdown">English</a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">Russian</a>
                            <a class="dropdown-item" href="#">French</a>
                            <a class="dropdown-item" href="#">Spanish</a>
                            <a class="dropdown-item" href="#">Chinese</a>
                        </div>
                    </li>
                </ul>
            </div> <!-- collapse .// -->
        </div> <!-- container .// -->
    </nav>
</header> <!-- section-header.// -->


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
    <div class="container">


        <!-- ============================  FILTER TOP  ================================= -->
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2"> Your are here: </div> <!-- col.// -->
                    <nav class="col-md-8">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Category name</a></li>
                            <li class="breadcrumb-item"><a href="#">Sub category</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Items</li>
                        </ol>
                    </nav> <!-- col.// -->
                </div> <!-- row.// -->
                <hr>
                <div class="row">
                    <div class="col-md-2">Filter by</div> <!-- col.// -->
                    <div class="col-md-10">
                        <ul class="list-inline">
                            <li class="list-inline-item mr-3 dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">   Supplier type </a>
                                <div class="dropdown-menu p-3" style="max-width:400px;">
                                    <label class="form-check">
                                        <input type="radio" name="myfilter" class="form-check-input"> Good supplier
                                    </label>
                                    <label class="form-check">
                                        <input type="radio" name="myfilter" class="form-check-input"> Best supplier
                                    </label>
                                    <label class="form-check">
                                        <input type="radio" name="myfilter" class="form-check-input"> New supplier
                                    </label>
                                </div> <!-- dropdown-menu.// -->
                            </li>
                            <li class="list-inline-item mr-3 dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">  Country </a>
                                <div class="dropdown-menu p-3">
                                    <label class="form-check"> 	 <input type="checkbox" class="form-check-input"> China    </label>
                                    <label class="form-check">   	 <input type="checkbox" class="form-check-input"> Japan      </label>
                                    <label class="form-check">    <input type="checkbox" class="form-check-input"> Uzbekistan  </label>
                                    <label class="form-check">  <input type="checkbox" class="form-check-input"> Russia     </label>
                                </div> <!-- dropdown-menu.// -->
                            </li>
                            <li class="list-inline-item mr-3 dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Feature</a>
                                <div class="dropdown-menu">
                                    <a href="" class="dropdown-item">Anti backterial</a>
                                    <a href="" class="dropdown-item">With buttons</a>
                                    <a href="" class="dropdown-item">Extra safety</a>
                                </div>
                            </li>
                            <li class="list-inline-item mr-3"><a href="#">Color</a></li>
                            <li class="list-inline-item mr-3"><a href="#">Size</a></li>
                            <li class="list-inline-item mr-3">
                                <div class="form-inline">
                                    <label class="mr-2">Price</label>
                                    <input class="form-control form-control-sm" placeholder="Min" type="number">
                                    <span class="px-2"> - </span>
                                    <input class="form-control form-control-sm" placeholder="Max" type="number">
                                    <button type="submit" class="btn btn-sm btn-light ml-2">Ok</button>
                                </div>
                            </li>
                            <li class="list-inline-item mr-3">
                                <label class="custom-control mt-1 custom-checkbox">
                                    <input type="checkbox" class="custom-control-input">
                                    <div class="custom-control-label">Ready to ship
                                    </div>
                                </label>
                            </li>
                        </ul>
                    </div> <!-- col.// -->
                </div> <!-- row.// -->
            </div> <!-- card-body .// -->
        </div> <!-- card.// -->
        <!-- ============================ FILTER TOP END.// ================================= -->

        <header class="mb-3">
            <div class="form-inline">
                <strong class="mr-md-auto">32 Items found </strong>
                <select class="mr-2 form-control">
                    <option>Latest items</option>
                    <option>Trending</option>
                    <option>Most Popular</option>
                    <option>Cheapest</option>
                </select>
                <div class="btn-group">
                    <a href="page-listing-grid.html" class="btn btn-light active" data-toggle="tooltip" title="List view">
                        <i class="fa fa-bars"></i></a>
                    <a href="page-listing-large.html" class="btn btn-light" data-toggle="tooltip" title="Grid view">
                        <i class="fa fa-th"></i></a>
                </div>
            </div>
        </header><!-- sect-heading -->
        <c:forEach items="${products}" var="product">
        <div class="row">

                <div class="col-md-3">
                    <figure class="card card-product-grid">
                        <div class="img-wrap">
                            <span class="badge badge-danger"> NEW </span>
                            <img src="${product.color}">
                        </div> <!-- img-wrap.// -->
                        <figcaption class="info-wrap">
                            <a href="#" class="title mb-2">${product.name}</a>
                            <div class="price-wrap">
                                <span class="price">$ ${product.price}</span>
                                <small class="text-muted">/per bag</small>
                            </div> <!-- price-wrap.// -->
                            <p class="mb-2"> 1 Pieces  <small class="text-muted">(Min Order)</small></p>
                            <p class="text-muted ">Guangzhou Yichuang Electronic Co</p>
                            <hr>
                            <p class="mb-3">
                                <span class="tag"> <i class="fa fa-check"></i> Verified</span>
                                <span class="tag"> 4 Years </span>
                                <span class="tag"> 60 reviews </span>
                                <span class="tag"> China </span>
                            </p>
                            <label class="custom-control mb-3 custom-checkbox">
                                <input type="checkbox" class="custom-control-input">
                                <div class="custom-control-label">Add to compare
                                </div>
                            </label>
                            <a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Add to cart </a>
                        </figcaption>
                    </figure>
                </div> <!-- col.// -->

        </div> <!-- row end.// -->
        </c:forEach>

        <nav class="mb-4" aria-label="Page navigation sample">
            <ul class="pagination">
                <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>


        <div class="box text-center">
            <p>Did you find what you were looking for？</p>
            <a href="" class="btn btn-light">Yes</a>
            <a href="" class="btn btn-light">No</a>
        </div>

    </div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->



<!-- ========================= SECTION SUBSCRIBE  ========================= -->
<section class="padding-y-lg bg-light border-top">
    <div class="container">

        <p class="pb-2 text-center">Delivering the latest product trends and industry news straight to your inbox</p>

        <div class="row justify-content-md-center">
            <div class="col-lg-4 col-sm-6">
                <form class="form-row">
                    <div class="col-8">
                        <input class="form-control" placeholder="Your Email" type="email">
                    </div> <!-- col.// -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-block btn-warning"> <i class="fa fa-envelope"></i> Subscribe </button>
                    </div> <!-- col.// -->
                </form>
                <small class="form-text">We’ll never share your email address with a third-party. </small>
            </div> <!-- col-md-6.// -->
        </div>


    </div>
</section>
<!-- ========================= SECTION SUBSCRIBE END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<footer class="section-footer bg-secondary">
    <div class="container">
        <section class="footer-top padding-y-lg text-white">
            <div class="row">
                <aside class="col-md col-6">
                    <h6 class="title">Brands</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#">Adidas</a></li>
                        <li> <a href="#">Puma</a></li>
                        <li> <a href="#">Reebok</a></li>
                        <li> <a href="#">Nike</a></li>
                    </ul>
                </aside>
                <aside class="col-md col-6">
                    <h6 class="title">Company</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#">About us</a></li>
                        <li> <a href="#">Career</a></li>
                        <li> <a href="#">Find a store</a></li>
                        <li> <a href="#">Rules and terms</a></li>
                        <li> <a href="#">Sitemap</a></li>
                    </ul>
                </aside>
                <aside class="col-md col-6">
                    <h6 class="title">Help</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#">Contact us</a></li>
                        <li> <a href="#">Money refund</a></li>
                        <li> <a href="#">Order status</a></li>
                        <li> <a href="#">Shipping info</a></li>
                        <li> <a href="#">Open dispute</a></li>
                    </ul>
                </aside>
                <aside class="col-md col-6">
                    <h6 class="title">Account</h6>
                    <ul class="list-unstyled">
                        <li> <a href="#"> User Login </a></li>
                        <li> <a href="#"> User register </a></li>
                        <li> <a href="#"> Account Setting </a></li>
                        <li> <a href="#"> My Orders </a></li>
                    </ul>
                </aside>
                <aside class="col-md">
                    <h6 class="title">Social</h6>
                    <ul class="list-unstyled">
                        <li><a href="#"> <i class="fab fa-facebook"></i> Facebook </a></li>
                        <li><a href="#"> <i class="fab fa-twitter"></i> Twitter </a></li>
                        <li><a href="#"> <i class="fab fa-instagram"></i> Instagram </a></li>
                        <li><a href="#"> <i class="fab fa-youtube"></i> Youtube </a></li>
                    </ul>
                </aside>
            </div> <!-- row.// -->
        </section>	<!-- footer-top.// -->

        <section class="footer-bottom text-center">

            <p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
            <p class="text-muted"> &copy 2019 Company name, All rights reserved </p>
            <br>
        </section>
    </div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->




</body>
</html>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>


<%--&lt;%&ndash;<div class="container" align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;<form method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="/products?action=create">Add new product</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="hidden" name="action" value="search">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="name">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <button>Search</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <table border="1px solid black">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td colspan="7">Product list</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>#</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Product Name</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Price</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Quantity</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Color</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Category</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>Action</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <c:forEach items="${products}" var="product">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.id}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.name}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.price}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>${product.quantity}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><img src="${product.color}"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><c:forEach items="${categories}" var="category">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <c:if test="${product.categoryId == category.id}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        ${category.name}&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </c:forEach> </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><a href="/products?action=edit&id=${product.id}">Edit</a>|<a href="/products?action=delete&id=${product.id}">Delete</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </table>&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="/products">Product</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="/users">Users</a>&ndash;%&gt;--%>

<%--&lt;%&ndash;</div>&ndash;%&gt;--%>


<%--</body>--%>
<%--</html>--%>

