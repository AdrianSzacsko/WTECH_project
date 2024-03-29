<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ShopController extends Controller
{
    public function viewShop(Request $request)
    {
        $search_query = session('search_query');
        if ($request->has('search_query')) {
            $search_query = $request->input('search_query');
            session(['search_query' => $search_query]);
        } else {
            $search_query = session('search_query');
        }

        $cat = session('category');
        if($request->category != null) {
            session(['category' => $request->category]);
            $cat = session('category');
        }
        else if(($cat == null) && ($request->category == null)) {
            session(['category' => 'all']);
            $cat = session('category');
        }

        switch($cat) {
            case 'flowers':
                $category_clicked = 1;
                break;
            case 'trees':
                $category_clicked = 2;
                break;
            case 'fruits':
                $category_clicked = 3;
                break;
            case 'vegetables':
                $category_clicked = 4;
                break;
            default:
                $category_clicked = 0;
                break;
        }

        if($cat === 'all') {
            $category = ['flowers', 'trees', 'fruits', 'vegetables'];
        }
        else {
            $category = array($cat);
        }

        $order_type = session('order_type');
        if($request->order_type != null) {
            session(['order_type' => $request->order_type]);
            $order_type = session('order_type');
        }
        else if(($order_type == null) && ($request->order_type == null)) {
            session(['order_type' => 'asc']);
            $order_type = session('order_type');
        }

        $order_by = session('order_by');
        $orderby_clicked = 0;
        if($request->order_by != null) {
            session(['order_by' => $request->order_by]);
            $order_by = session('order_by');
        }
        else if(($order_by == null) && ($request->order_by == null)) {
            session(['order_by' => 'products.id']);
            $order_by = session('order_by');
        }
        if($order_by === 'best_sellers') {
            $orderby_clicked = 0;
        } else if($order_by === 'created_at') {
            $orderby_clicked = 1;
        } else if($order_by === 'price') {
            if($order_type === 'desc') {
                $orderby_clicked = 2;
            } else if($order_type === 'asc') {
                $orderby_clicked = 3;
            }
        }

        $min_price = session('min_price');
        if($request->min_price != null) {
            session(['min_price' => $request->min_price]);
            $min_price = session('min_price');
        }
        else if(($min_price == null) && ($request->min_price == null)) {
            $min_price = number_format(Product::whereIn('category', $category)->min('price'), 2, decimal_separator: '.', thousands_separator: '');
            session(['min_price' => $min_price]);
        }

        $max_price = session('max_price');
        if($request->max_price != null) {
            session(['max_price' => $request->max_price]);
            $max_price = session('max_price');
        }
        else if(($max_price == null) && ($request->max_price == null)) {
            $max_price = number_format(Product::whereIn('category', $category)->max('price'), 2, decimal_separator: '.', thousands_separator: '');
            session(['max_price' => $max_price]);
        }


        if(session('size') == null) {
            session(['size' => ['small', 'medium', 'large']]);
        }
        else {
            if(($request->category == null) && ($request->order_type == null) && ($request->order_by == null) && ($request->min_price == null) && ($request->max_price == null) && !($request->has('search_query'))) {
                $size = session('size');
                if($request->size_s == null) {
                    session(['size' => array_diff($size, ['small'])]);
                }
                else if(!in_array('small', $size)) {
                    array_push($size, 'small');
                    session(['size' => $size]);
                }

                $size = session('size');
                if($request->size_m == null) {
                    session(['size' => array_diff($size, ['medium'])]);
                }
                else if(!in_array('medium', $size)) {
                    array_push($size, 'medium');
                    session(['size' => $size]);
                }

                $size = session('size');
                if($request->size_l == null) {
                    session(['size' => array_diff($size, ['large'])]);
                }
                else if(!in_array('large', $size)) {
                    array_push($size, 'large');
                    session(['size' => $size]);
                }
                $size = session('size');
            }
        }
        $size = session('size');


        $products = Product::select('products.*', DB::raw('MIN(photo_path) AS photo_path, MAX(product_statistics.count) AS best_sellers'))
                ->leftJoin('photos', 'products.id', '=', 'photos.product_id')
                ->leftJoin('product_statistics', 'products.id', '=', 'product_statistics.product_id')
                ->whereRaw('LOWER(name) LIKE ?', ['%' . strtolower($search_query) . '%'])
                ->whereIn('category', $category)
                ->whereIn('product_size', $size)
                ->where('price', '>=', $min_price)
                ->where('price', '<=', $max_price)
                ->orderBy($order_by, $order_type)
                ->groupBy('products.id')
                ->paginate(6);


        return view('shop/shop', ['products' => $products, 'orderby_clicked' => $orderby_clicked, 'category_clicked' => $category_clicked, 'min_price' => $min_price, 'max_price' => $max_price, 'search_query'=>$search_query, 'size' => json_encode($size)]);
    }

    public function viewProduct(Request $request)
    {
        $product_detail = Product::find($request->product_id);
        $photos = Photo::where('product_id', '=', $request->product_id)->get();

        $min_price = session('min_price');
        if($request->min_price != null) {
            session(['min_price' => $request->min_price]);
            $min_price = session('min_price');
        }
        else if(($min_price == null) && ($request->min_price == null)) {
            $min_price = number_format(Product::min('price'), 2, decimal_separator: '.', thousands_separator: '');
            session(['min_price' => $min_price]);
        }

        $max_price = session('max_price');
        if($request->max_price != null) {
            session(['max_price' => $request->max_price]);
            $max_price = session('max_price');
        }
        else if(($max_price == null) && ($request->max_price == null)) {
            $max_price = number_format(Product::max('price'), 2, decimal_separator: '.', thousands_separator: '');
            session(['max_price' => $max_price]);
        }

        $best_sellers = Product::select('products.*', DB::raw('MIN(photo_path) AS photo_path, MAX(product_statistics.count) AS best_sellers'))
            ->leftJoin('photos', 'products.id', '=', 'photos.product_id')
            ->leftJoin('product_statistics', 'products.id', '=', 'product_statistics.product_id')
            ->where('products.id', '<>', $request->product_id)
            ->orderBy('best_sellers', 'asc')
            ->groupBy('products.id')
            ->take(6)
            ->get();

        return view('shop/product_detail', ['product_detail' => $product_detail, 'photos' => $photos, 'best_sellers' => $best_sellers, 'min_price' => $min_price, 'max_price' => $max_price]);
    }

}
