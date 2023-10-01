<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    /**
     * return home page
     *
     *@return View
     */
    public function detail(): View
    {
        return view('blog.detail');
    }
}