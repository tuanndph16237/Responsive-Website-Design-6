<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Sale;

class DetailsComponent extends Component
{
    public $slug;
    public $qty;

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->qty = 1;
    }

    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added in Cart');
        return redirect()->route('product.cart');
    }
    public function increaseQuantity()
    {
        $this->qty++;
    }

    public function decreseQuantity()
    {
        if ($this->qty > 1) {
            $this->qty--;
        }
    }

    public function render()
    {
        $product = Product::where('slug', $this->slug)->first();
        $related_products = Product::where('category_id', $product->category_id)->inRandomOrder()->limit(5)->get();
        $popular_products = Product::inRandomOrder()->limit(4)->get();
        $sale = Sale::find(1);
        return view('livewire.details-component', ['product' => $product, 'related_products' => $related_products, 'popular_products' => $popular_products, 'sale' => $sale])->layout('layouts.base');
    }
}
