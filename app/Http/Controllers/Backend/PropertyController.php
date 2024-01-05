<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Property;
use App\Models\Facility;
use App\Models\MultiImg;
use App\Models\PropertyType;
use App\Models\Amenities;
use App\Models\user;
// use App\Models\MultiImg;
use Intervention\Image\Facades\Image;
use Haruncpi\LaravelIdGenerator\IdGenerator;


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
        $save_url = 'upload/property/thambnail/'.$name_gen;

        $amen = $request->amenities_id;
        $amenities = implode(",",$amen);
//        dd($amenities);

        $pcode = IdGenerator::generate(['table' => 'properties','field'=>'property_code','length'=> 5, 'prefix' => 'pc' ]);

        $property_id = Property::insertGetId([

            'ptype_id' => $request->ptype_id,
            'amenities_id' => $amenities,
            'property_name' => $request->property_name,
            'property_slug' => strtolower(str_replace(' ','-',$request->property_name)),
            'property_code' => $pcode,
            'property_status' => $request->property_status,

            'lowest_price' => $request->lowest_price,
            'max_price' => $request->max_price,
            'short_descp' => $request->short_descp,
            'long_descp' => $request->long_descp,

            'bedrooms' => $request->bedrooms,
            'bathrooms' => $request->bathrooms,
            'garage' => $request->garage,
            'garage_size' => $request->garage_size,

            'property_size' => $request->property_size,
            'property_video' => $request->property_video,
            'address' => $request->address,
            'city' => $request->city,
            'state' => $request->state,
            'postal_code' => $request->postal_code,

            'neighborhood' => $request->neighborhood,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,

            'featured' => $request->featured,
            'hot' => $request->hot,
            'agent_id' => $request->agent_id,
            'status' => 1,
            'property_thambnail' => $save_url,
            'created_at' => Carbon::now(),
        ]);

        /// Multiple Image Upload From Here ////

        $images = $request->file('multi_img');
        foreach($images as $img){

            $make_name = hexdec(uniqid()).'.'.$img->getClientOriginalExtension();
            Image::make($img)->resize(770,520)->save('upload/property/multi-image/'.$make_name);
            $uploadPath = 'upload/property/multi-image/'.$make_name;

            MultiImg::insert([

                'property_id' => $property_id,
                'photo_name' => $uploadPath,
                'created_at' => Carbon::now(),

            ]);
        } // End Foreach

        /// End Multiple Image Upload From Here ////

        /// Facilities Add From Here ////

        $facilities = Count($request->facility_name);
        if ($facilities != NULL) {
            for ($i=0; $i < $facilities; $i++) {
                $fcount = new Facility();
                $fcount->property_id = $property_id;
                $fcount->facility_name = $request->facility_name[$i];
                $fcount->distance = $request->distance[$i];
                $fcount->save();
            }
        }

        $notification = array(
            'message' => 'Property Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.property')->with($notification);


    } //end method

    public function EditProperty($id){
        $property = Property::findOrFail($id);
        $propertytype = PropertyType::latest()->get();
        $amenities = Amenities::latest()->get();
        $activeAgent = User::where('status','active')->where('role','agent')->latest()->get();

        $type = $property->amenities_id;
        $property_ami = explode(',', $type);

        $multiImage = MultiImg::where('property_id',$id)->get();

        $facilities = Facility::where('property_id',$id)->get();

        return view('backend.property.edit_property',compact('property','propertytype','amenities','activeAgent','property_ami','multiImage','facilities'));
    
    } //end method


    public function UpdateProperty(Request $request)
    {

        $amen = $request->amenities_id;
        $amenites = implode(",", $amen);

        $property_id = $request->id;

        Property::findOrFail($property_id)->update([

            'ptype_id' => $request->ptype_id,
            'amenities_id' => $amenites,
            'property_name' => $request->property_name,
            'property_slug' => strtolower(str_replace(' ', '-', $request->property_name)), 
            'property_status' => $request->property_status,

            'lowest_price' => $request->lowest_price,
            'max_price' => $request->max_price,
            'short_descp' => $request->short_descp,
            'long_descp' => $request->long_descp,
            'bedrooms' => $request->bedrooms,
            'bathrooms' => $request->bathrooms,
            'garage' => $request->garage,
            'garage_size' => $request->garage_size,

            'property_size' => $request->property_size,
            'property_video' => $request->property_video,
            'address' => $request->address,
            'city' => $request->city,
            'state' => $request->state,
            'postal_code' => $request->postal_code,

            'neighborhood' => $request->neighborhood,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'featured' => $request->featured,
            'hot' => $request->hot,
            'agent_id' => $request->agent_id, 
            'updated_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'Property Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.property')->with($notification); 

    } //end method


    // update Main Thambnail Image

    public function UpdatePropertyThambnail(Request $request){

        $pro_id = $request->id;
        $oldImage = $request->old_img;

        $image = $request->file('property_thambnail');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(370,250)->save('upload/property/thambnail/'.$name_gen);
        $save_url = 'upload/property/thambnail/'.$name_gen;

        if (file_exists($oldImage)) {
            unlink($oldImage);
        }

        Property::findOrFail($pro_id)->update([

            'property_thambnail' => $save_url,
            'updated_at' => Carbon::now(), 
        ]);

         $notification = array(
            'message' => 'Property Image Thambnail Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 

    }// End Method 


    // multiimage  update

    public function UpdatePropertyMultiimage(Request $request){

        $imgs = $request->multi_img;

        foreach($imgs as $id => $img){
            $imgDel = MultiImg::findOrFail($id);
            unlink($imgDel->photo_name);

        $make_name = hexdec(uniqid()).'.'.$img->getClientOriginalExtension();
        Image::make($img)->resize(770,520)->save('upload/property/multi-image/'.$make_name);
        $uploadPath = 'upload/property/multi-image/'.$make_name;

        MultiImg::where('id',$id)->update([

            'photo_name' => $uploadPath,
            'updated_at' => Carbon::now(),

        ]);

        } // End Foreach 


         $notification = array(
            'message' => 'Property Multi Image Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 


    }// End Method 

        // multi image delete
    public function PropertyMultiImageDelete($id){

        $oldImg = MultiImg::findOrFail($id);
        unlink($oldImg->photo_name);

        MultiImg::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Property Multi Image Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 

    }// End Method 

        //store multi image
    public function StoreNewMultiimage(Request $request){

        $new_multi = $request->imageid;
        $image = $request->file('multi_img');

     $make_name = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    Image::make($image)->resize(770,520)->save('upload/property/multi-image/'.$make_name);
        $uploadPath = 'upload/property/multi-image/'.$make_name;

        MultiImg::insert([
            'property_id' => $new_multi,
            'photo_name' => $uploadPath,
            'created_at' => Carbon::now(), 
        ]);

    $notification = array(
            'message' => 'Property Multi Image Added Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 
    }// End Method


    //UpdatePropertyFacilities
    public function UpdatePropertyFacilities(Request $request)
    {
        $pid=$request->id;

        if($request->facility_name == NULL){
            return redirect()->back();
        }else{
            Facility::where('property_id',$pid)->delete();

            $facilities = Count($request->facility_name); 

           for ($i=0; $i < $facilities; $i++) { 
               $fcount = new Facility();
               $fcount->property_id = $pid;
               $fcount->facility_name = $request->facility_name[$i];
               $fcount->distance = $request->distance[$i];
               $fcount->save();
           } // end for 
        }

        $notification = array(
            'message' => 'Property Facility Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);   

    }   // End Method


    public function DeleteProperty($id){

        $property = Property::findOrFail($id);
        unlink($property->property_thambnail);

        Property::findOrFail($id)->delete();

        $image = MultiImg::where('property_id',$id)->get();

        foreach($image as $img){
            unlink($img->photo_name);
            MultiImg::where('property_id',$id)->delete();
        }

        $facilitiesData = Facility::where('property_id',$id)->get();
        foreach($facilitiesData as $item){
            $item->facility_name;
            Facility::where('property_id',$id)->delete();
        }


         $notification = array(
            'message' => 'Property Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 

    }// End Method  


    // details page

    public function DetailsProperty($id){
        $property = Property::findOrFail($id);
        $propertytype = PropertyType::latest()->get();
        $amenities = Amenities::latest()->get();
        $activeAgent = User::where('status','active')->where('role','agent')->latest()->get();

        $type = $property->amenities_id;
        $property_ami = explode(',', $type);

        $multiImage = MultiImg::where('property_id',$id)->get();

        $facilities = Facility::where('property_id',$id)->get();

        return view('backend.property.details_property',compact('property','propertytype','amenities','activeAgent','property_ami','multiImage','facilities'));
    }


}
