<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin screen</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link rel="stylesheet" href="css/header.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <link rel="stylesheet" href="css/admin.css" type="text/css">
    <link rel="stylesheet" href="css/button_1.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!-- Header-->
<header class="header">
    <section class="site_name_logo">
        <a href="index.html" class="website_name_a">
            <img class="logo" src="assets/logo/wtech_logo_v2-removebg-preview.png" alt="logo">
            <h3 class="website-name">Plant Hub</h3>
        </a>
    </section>
    <section class="search-form">
        <label class="search-form">
            <input type="text" placeholder="Search...">
        </label>
        <button type="submit" onclick="window.location.href='shop.html'"><span
                class="material-symbols-outlined">search</span></button>
    </section>
    <nav class="show_all_nav">
        <ul class="nav_links">
            <li class="home_button"><a href="index.html">Home</a></li>
            <li><a href="shop.html">Shop</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="shopping_cart.html"><span class="material-symbols-outlined">shopping_cart</span> </a></li>
            <li><a href="login.html">Login</a></li>
        </ul>
        <div class="dropdown dropdown-hover">
            <button type="button" class="btn shadow-none" data-bs-toggle="dropdown">
                <span class="material-symbols-outlined">menu</span>
            </button>
            <ul class="dropdown-menu dropdown-menu-end dropdown_content">
                <li><a href="index.html">Home</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="shopping_cart.html">Cart</a></li>
                <li><a href="login.html">Login</a></li>
            </ul>
        </div>
    </nav>
</header>
<!-- end Header -->

<main class="main row m-0 d-flex justify-content-center align-items-center">

    <div class="d-flex p-0 my-2 justify-content-center align-items-center">
        <a href="#add_item" class="scroll_to_bottom">Scroll to bottom</a>
    </div>
    <div class="container-fluid w-100 p-0 m-0">
        @foreach($products as $product)
        <div class="row justify-content-between m-0 align-items-center d-flex">
            <div class="col-5 col-lg-5 col-md-6 col-sm-5 d-inline-block m-0 p-0">
                <div class="flex-row d-flex align-items-center">
                    @if(empty($product->photos))
                        <img class="img-thumbnail" src="" alt={{$product->name}}>
                    @else
                        <img class="img-thumbnail" src="assets/products/{{$product->photos[0]}}" alt={{$product->name}}>
                    @endif
                    <!-- https://pixabay.com/photos/a-tree-nature-heart-cherry-flowers-5255288/ -->
                    <div class="col m-2">
                        <h3>{{$product->name}}</h3>
                        <p>{{$product->short_description}}</p>
                    </div>
                </div>
            </div>

            <div class="col-4 col-lg-3 col-md-3 col-sm-3 align-items-center gap-4 justify-content-end m-0 p-0">
                <div class="d-flex justify-content-between flex-row align-items-center m-0 p-0">
                    <div class="price-div align-items-center d-flex  m-0 p-0">{{$product->price}}</div>
                    <div class="edit-div align-items-center d-flex m-0 p-0">
                        <a href="edit_product.html">
                            <span class="material-symbols-outlined">edit_square</span>
                        </a>
                    </div>
                    <div class="delete-div align-items-center d-flex  m-0 p-0"><a href="">
                            <span class="material-symbols-outlined">delete</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        @endforeach
    </div>

    <div class="col-3 d-flex justify-content-center text-center m-0 mb-2">
        <button type="button" id="add_item" class="btn_custom" onclick="window.location.href='edit_product.html'">
            Add product
        </button>
    </div>
</main>


<!-- Footer -->
<footer class="footer">
    <section class="site_logo">
        <img class="footer_logo" src="assets/logo/wtech_logo_v2-removebg-preview.png" alt="logo">
    </section>
    <section class="blocks_holder">
        <!-- canvas for the 3 blocks-->
        <address class="block">
            <span class="material-symbols-outlined">distance</span>
            <p class="text">Main Address 24</p>
        </address>

        <address class="block">
            <span class="material-symbols-outlined">alternate_email</span>
            <p class="text">email@email.com</p>
        </address>

        <address class="block">
            <span class="material-symbols-outlined">call</span>
            <p class="text">0901234567</p>
        </address>
    </section>
</footer>
<!-- end Footer -->

</body>
</html>
