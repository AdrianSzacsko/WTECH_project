<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link rel="stylesheet" href="css/header.css" type="text/css">
    <link rel="stylesheet" href="css/footer.css" type="text/css">
    <link rel="stylesheet" href="css/side_nav.css" type="text/css">
    <link rel="stylesheet" href="css/shop_content.css" type="text/css">


    <script>
        function order_by_clicked(num) {
            var order_by_buttons = document.getElementsByClassName("order_by_btn");
            for (let i = 0; i < order_by_buttons.length; i++) {
                if(i === num) {
                    order_by_buttons[i].style.backgroundColor = "var(--nyanza)";
                    order_by_buttons[i].style.border = "3px solid var(--avocado)";
                    order_by_buttons[i].style.borderBottom = "3px solid var(--nyanza)";
                }
                else {
                    order_by_buttons[i].style.backgroundColor = "var(--honeydew)";
                    order_by_buttons[i].style.border = "3px solid var(--nyanza)";
                    order_by_buttons[i].style.borderBottom = "3px solid var(--avocado)";
                }
            }
        }


        function display(element) {
            var x = document.getElementById(element);
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }

        function clicked_checkbox(checkbox, input_element) {
            var inp = document.getElementById(input_element);
            if (checkbox.checked === false) {
                inp.style.pointerEvents = "none";
            } else {
                inp.style.pointerEvents = "auto";
            }
        }
    </script>

</head>
<body onload=order_by_clicked(0);>
<!-- Header-->
@include('includes.header')
<!-- end Header -->


<!-- SHOP CONTENT -->
<main class="row">
    <div class="side_nav col-md-3">
        <ul class="side_nav_links">
            <li>
                <button class="side_nav_button" onclick="display('sub_side_nav_links')">
                    Categories<span class="material-symbols-outlined">expand_more</span>
                </button>
                <ul id="sub_side_nav_links" class="sub_side_nav_links">
                    <li>
                        <button class="side_nav_button">Flowers</button>
                    </li>
                    <li>
                        <button class="side_nav_button">Trees</button>
                    </li>
                    <li>
                        <button class="side_nav_button">Fruit</button>
                    </li>
                    <li>
                        <button class="side_nav_button">Vegetables</button>
                    </li>
                </ul>
            </li>
            <li>
                <button class="side_nav_button" onclick="display('side_nav_filters')">
                    Filters<span class="material-symbols-outlined">expand_more</span>
                </button>
                <ul id="side_nav_filters" class="side_nav_filters">
                    <li>
                        <label class="filter_label">Price</label>
                        <div class="price_values">
                            <div class="price_value_range">
                                <label>
                                    <input class="checkbox" type="checkbox"
                                           onclick="clicked_checkbox(this, 'price_input_min')">
                                </label>
                                <label class="price_label" for="price_input_min">Min</label>
                                <input id="price_input_min" class="price_input price_input_min" type="number" value="0">
                            </div>
                            <div class="price_value_range">
                                <label>
                                    <input class="checkbox" type="checkbox" checked
                                           onclick="clicked_checkbox(this, 'price_input_max')">
                                </label>
                                <label class="price_label" for="price_input_max">Max</label>
                                <input id="price_input_max" class="price_input" type="number" value="19.99">
                            </div>
                        </div>
                        <button class="set_price_button">Set</button>
                    </li>
                </ul>
            </li>
        </ul>

        <ul class="side_nav_links_SS row">  <!-- small screen = SS -->
            <li class="col">
                <button class="side_nav_button_SS dropdown dropdown-hover" data-bs-toggle="dropdown">
                    Categories<span class="material-symbols-outlined">expand_more</span>
                </button>
                <ul class="side_nav_sub_links_SS dropdown-menu">
                    <li>
                        <button class="side_nav_button_SS dropdown-item">Flowers</button>
                    </li>
                    <li>
                        <button class="side_nav_button_SS dropdown-item">Trees</button>
                    </li>
                    <li>
                        <button class="side_nav_button_SS dropdown-item">Fruit</button>
                    </li>
                    <li>
                        <button class="side_nav_button_SS dropdown-item">Vegetables</button>
                    </li>
                </ul>
            </li>
            <li class="col">
                <button class="side_nav_button_SS dropdown dropdown-hover" data-bs-toggle="dropdown">
                    Filters<span class="material-symbols-outlined">expand_more</span>
                </button>
                <ul class="side_nav_filters_SS side_nav_sub_links_SS dropdown-menu">
                    <li class="dropdown-item">
                        <label class="filter_label">Price</label>
                        <div class="price_values">
                            <div class="price_value_range">
                                <label>
                                    <input class="checkbox" type="checkbox"
                                           onclick="clicked_checkbox(this, 'price_input_min_SS')">
                                </label>
                                <label class="price_label" for="price_input_min_SS">Min</label>
                                <input id="price_input_min_SS" class="price_input price_input_min" type="number" value="0">
                            </div>
                            <div class="price_value_range">
                                <label>
                                    <input class="checkbox" type="checkbox" checked
                                           onclick="clicked_checkbox(this, 'price_input_max_SS')">
                                </label>
                                <label class="price_label" for="price_input_max_SS">Max</label>
                                <input id="price_input_max_SS" class="price_input" type="number" value="19.99">
                            </div>
                        </div>
                        <button class="set_price_button_SS">Set</button>
                    </li>
                </ul>
            </li>
            <li class="col">
                <button class="side_nav_button_SS dropdown dropdown-hover" data-bs-toggle="dropdown">
                    Order by<span class="material-symbols-outlined">expand_more</span>
                </button>
                <ul class="side_nav_sub_links_SS dropdown-menu dropdown-menu-end">
                    <li>
                        <button class="side_nav_button_SS dropdown-item">Best-sellers</button>
                    </li>
                    <li>
                        <button class="side_nav_button_SS dropdown-item">New</button>
                    </li>
                    <li>
                        <button class="side_nav_button_SS dropdown-item">€ High to low</button>
                    </li>
                    <li>
                        <button class="side_nav_button_SS dropdown-item">€ Low to high</button>
                    </li>
                </ul>
            </li>
        </ul>
    </div>


    <div class="shop col-md-9">
        <div class="orderby_buttons">
            <ul class="row">
                <li class="col">
                    <button class="order_by_btn" onclick="order_by_clicked(0)">Best-sellers</button>
                </li>
                <li class="col">
                    <button class="order_by_btn" onclick="order_by_clicked(1)">New</button>
                </li>
                <li class="col">
                    <button class="order_by_btn" onclick="order_by_clicked(2)">€ High to low</button>
                </li>
                <li class="col">
                    <button class="order_by_btn" onclick="order_by_clicked(3)">€ Low to high</button>
                </li>
            </ul>
        </div>
        <div class="products_wrapper items row row-cols-2 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 rows-cols-xl-4 g-3">
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/cherry_tree.jpg" alt="product_image">  <!-- https://pixabay.com/photos/a-tree-nature-heart-cherry-flowers-5255288/ -->
                        <section class="card-body">
                            <h3 class="card-title">Cherry tree</h3>
                            <p class="card-price">19.99€</p>
                        </section>
                    </a>
                </article>
            </div>
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/linden_tree.jpg" alt="product_image">  <!-- https://pixabay.com/photos/linden-tree-building-fruit-stands-210389/ -->
                        <section class="card-body">
                            <h3 class="card-title">Linden tree</h3>
                            <p class="card-price">16.89€</p>
                        </section>
                    </a>
                </article>
            </div>
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/apple_tree.png" alt="product_image">  <!-- https://pixabay.com/photos/apple-tree-apples-leaves-fall-3735679/ -->
                        <section class="card-body">
                            <h3 class="card-title">Apple tree</h3>
                            <p class="card-price">18.99€</p>
                        </section>
                    </a>
                </article>
            </div>
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/pine_tree.jpg" alt="product_image">  <!-- https://pixabay.com/photos/nature-tree-no-one-outside-needle-3233209/ -->
                        <section class="card-body">
                            <h3 class="card-title">Pine tree</h3>
                            <p class="card-price">15.50€</p>
                        </section>
                    </a>
                </article>
            </div>
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/oak_tree.jpg" alt="product_image">  <!-- https://www.pexels.com/photo/in-distant-photo-of-tree-on-landscape-field-3283498/ -->
                        <section class="card-body">
                            <h3 class="card-title">Oak tree</h3>
                            <p class="card-price">16.89€</p>
                        </section>
                    </a>
                </article>
            </div>
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/beech_tree.jpg" alt="product_image">  <!-- https://pixabay.com/photos/tree-beech-fall-deciduous-tree-2812466/ -->
                        <section class="card-body">
                            <h3 class="card-title">Beech tree</h3>
                            <p class="card-price">16.89€</p>
                        </section>
                    </a>
                </article>
            </div>
            <div class="col">
                <article class="card">
                    <a href="product_detail.html">
                        <img class="card-img" src="assets/products/plum_tree.jpg" alt="product_image">  <!-- https://pixabay.com/photos/winter-flowers-plum-blossom-tree-1157079/ -->
                        <section class="card-body">
                            <h3 class="card-title">Plum tree</h3>
                            <p class="card-price">19.99€</p>
                        </section>
                    </a>
                </article>
            </div>
        </div>
    </div>
</main>

<!-- end SHOP CONTENT -->


<!-- FOOTER -->
@include('includes.footer')
<!-- /FOOTER -->
</body>
</html>