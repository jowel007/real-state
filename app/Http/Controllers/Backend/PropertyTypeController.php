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

    public function AddProperty()
    {
        return view ('backend.property.add_property');
    }

    public function StoreProperty(Request $request)
    {
        $request->validate([
            'type_name' => 'required|unique:property_types|max:200',
            'type_icon' => 'required'
        ]);

        PropertyType::insert([
            'type_name' => $request->type_name,
            'type_icon' => $request->type_icon,
        ]);

        $notification = array(
            'message' => 'Property Type Created Successfully',
            'alert-type' => 'success'
            );

        return redirect()->route('all.property')->with($notification);
    }

}
