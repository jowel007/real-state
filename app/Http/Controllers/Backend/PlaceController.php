<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Place;
use Intervention\Image\Facades\Image;
class PlaceController extends Controller
{
    public function AllPlace(){
        $place = Place::latest()->get();
        return view('backend.place.all_place',compact('place'));
    }

    public function AddPlace(){
        return view('backend.place.add_place');
    }

    public function StorePlace(Request $request){
        $image = $request->file('place_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(370,275)->save('upload/place/'.$name_gen);
        $save_url = 'upload/place/'.$name_gen;

        Place::insert([
            'place_name' => $request->place_name,
            'place_image' => $save_url,
        ]);


        $notification = array(
            'message' => 'Place Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.place')->with($notification);


    }

    public function EditPlace($id){
        $place = Place::findOrFail($id);
        return view('backend.place.edit_place',compact('place'));
    }


    public function UpdatePlace(Request $request){

        $place_id = $request->id;

        if ($request->file('state_image')) {
            $image = $request->file('state_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(370,275)->save('upload/place/'.$name_gen);
            $save_url = 'upload/place/'.$name_gen;

            Place::findOrFail($place_id)->update([
                'place_name' => $request->place_name,
                'place_image' => $save_url,
            ]);

            $notification = array(
                'message' => 'Place Updated with Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('all.place')->with($notification);

        }else{

            Place::findOrFail($place_id)->update([
                'place_name' => $request->place_name,
            ]);

            $notification = array(
                'message' => 'Place Updated without Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('all.place')->with($notification);

        }

    }// End Method


    public function DeletePlace($id){

        $place = Place::findOrFail($id);
        $img = $place->place_image;
        unlink($img);

        Place::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Place Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }// End Method


}
