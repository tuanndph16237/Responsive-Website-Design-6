<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EventController extends Controller
{
    /**
     * return home page
     *
     *@return View
     */
    public function index()
    {
        return view('event');
    }
}
