<?php

namespace App\Livewire\User;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;

class UserOrdersComponent extends Component
{
    public function render()
    {
        $orders = Order::where('user_id',Auth::user()->id)->orderBy('created_at','DESC')->paginate(12);
        return view('livewire.user.user-orders-component',['orders'=>$orders])->layout('layouts.base');
    }
}