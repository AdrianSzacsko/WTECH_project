<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Edit product</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link rel="stylesheet" href="{{asset('css/header.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/footer.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/edit_product.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/button_1.css')}}" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!-- Header-->
<header class="header">
    <section class="site_name_logo">
        <a href="index.html" class="website_name_a">
            <img class="logo" src="{{asset('assets/logo/wtech_logo_v2-removebg-preview.png')}}" alt="logo">
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

<main class="main row m-0 d-flex align-items-center my-4">
    <div class="images_div mt-4 col-10 col-lg-3 col-md-10 col-sm-10 d-flex flex-column gap-3 justify-content-start">
        <div class="image_wrapper d-flex flex-row col-12">
            <img class="img-thumbnail p-0" src="assets/products/cherry_tree.jpg" alt="Cherry tree">
            <div class="delete-div align-items-center d-flex">
                <a class="delete_image" href=""> <span class="material-symbols-outlined">delete</span></a>
            </div>
        </div>
        <div class="image_wrapper d-flex flex-row col-12">
            <img class="img-thumbnail p-0" src="assets/products/cherry_tree.jpg" alt="Cherry tree">
            <div class="delete-div align-items-center d-flex">
                <a class="delete_image" href=""> <span class="material-symbols-outlined">delete</span></a>
            </div>
        </div>
        <div class="image_wrapper d-flex flex-row col-12">
            <img class="img-thumbnail p-0" src="assets/products/cherry_tree.jpg" alt="Cherry tree">
            <div class="delete-div align-items-center d-flex">
                <a class="delete_image" href=""> <span class="material-symbols-outlined">delete</span></a>
            </div>
        </div>
        <div class="col-12 d-flex justify-content-center text-center m-0">
            <label for="imageUpload" class="btn_custom">
Upload image
<input type="file" id="imageUpload" style="display:none;">
            </label>
        </div>
    </div>
    <div class="forms_div col-10 col-lg-7 col-md-10 col-sm-10 my-4 d-flex flex-column gap-2">
        <section class="input_section col-lg-8 d-flex flex-column">
            <label for="product_name">Product name<br></label>
            <label class="input_label">
                <input class="d-flex w-75" type="text" placeholder="Product name..." id="product_name">
            </label>
        </section>
        <section class="input_section d-flex flex-column">
            <label for="price">Price<br></label>
            <div class="price_wrapper d-flex flex-row align-items-center">
                <label class="input_label">
                    <input class="d-flex" type="text" placeholder="Price..." id="Price">
                </label>
                <p class="euro text-center">€</p>
            </div>
        </section>
        <section class="input_section col-lg-8 d-flex flex-column">
            <label for="short_description">Short description<br></label>
            <label class="input_label">
                <textarea class="form-control flex-grow-1 d-flex w-100" rows="3" type="text"
                          placeholder="Product name..." id="short_description"></textarea>
            </label>
        </section>
        <section class="input_section col-lg-8 d-flex flex-column">
            <label for="long_description">Long description<br></label>
            <label class="input_label">
                <textarea class="form-control flex-grow-1 d-flex w-100" rows="6" type="text"
                          placeholder="Product description..." id="long_description">
                </textarea>
            </label>
        </section>
    </div>
    <div class="col-12 d-flex justify-content-center text-center m-0">
        <button type="button" class="btn_custom" onclick="window.location.href='admin.html'">
    Save changes
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

<script>
    // Get the textarea element by its ID
    var textarea = document.getElementById('long_description');

    // Clear the textarea content on page load
    textarea.value = '';
</script>

</body>
</html>
