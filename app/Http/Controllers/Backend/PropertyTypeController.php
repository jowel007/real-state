<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\PropertyType;

class PropertyTypeController extends Controller
{
    public function AllProperty()
    {
        $property = PropertyType::latest()->get();
        return view ('backend.property.all_property',compact('property'));
    }
}
