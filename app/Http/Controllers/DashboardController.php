<?php

namespace App\Http\Controllers;
use App\Models\Resident;
use App\Models\BarangayCase;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
     public function index(){


        return view('dashboard');
     }
     public function homepage(){
        $totalResidents = [
            'totalResidentsCount' => Resident::count(),
            'totalResidentsMale' => Resident::where('gender', 'Male')->count(),
            'totalResidentsFemale' => Resident::where('gender', 'Female')->count(),
        ];


        return view("home", $totalResidents);


     }
     public function Senior(){
        return view("senior");
     }


}

