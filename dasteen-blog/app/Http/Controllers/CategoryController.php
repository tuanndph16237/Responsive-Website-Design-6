<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * return home page
     *
     *@return View
     */
    public function category()
    {
        return view('blog.category');
    }
}
