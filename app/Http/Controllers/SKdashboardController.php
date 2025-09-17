<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SKdashboardController extends Controller
{
    public function index(){
        return view('skuser.dashboard');
     }
}
