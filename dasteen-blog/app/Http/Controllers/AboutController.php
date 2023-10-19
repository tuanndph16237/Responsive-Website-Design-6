<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    /**
     * return home page
     *
     *@return View
     */
    public function index()
    {
        return view('about');
    }
}
