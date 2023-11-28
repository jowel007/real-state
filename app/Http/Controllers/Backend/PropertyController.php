<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Property;
use App\Models\Facility;
use App\Models\MultiImg;
use App\Models\PropertyType;
use App\Models\Amenities;
use App\Models\user;
use Intervention\Image\Facades\Image;

class PropertyController extends Controller
{

    public function AllProperty(){
        $property = Property::latest()->get();
        return view('backend.property.all_property',compact('property'));
    }

    public function AddProperty(){

        $propertytype = PropertyType::latest()->get();
        $amenities = Amenities::latest()->get();
        $activeAgent = User::where('status','active')->where('role','agent')->latest()->get();
        return view('backend.property.add_property',compact('propertytype','amenities','activeAgent'));

    }// End Method 

    // insert data in database

    public function StoreProperty(Request $request){
        $image = $request->file('property_thambnail');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(370,250)->save('upload/property/thambnail/'.$name_gen);
        $save_url = 'upload/property/thambnail'.$name_gen;


    }

    
}
