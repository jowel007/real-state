<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Property;
use App\Models\MultiImg;
use App\Models\Facility;
use App\Models\Amenities;
use App\Models\PropertyType;
use App\Models\User;
use App\Models\PropertyMessage;
use App\Models\PackagePlan;
use Auth;
use Carbon\Carbon;
use App\Models\Schedule;

class IndexController extends Controller
{

    public function PropertyDetails($id,$slug){

        $property = Property::findOrFail($id);
        $multiImage = MultiImg::where('property_id',$id)->get();

        $amenities = $property->amenities_id;
        $property_amen = explode(',',$amenities);

        $facility = Facility::where('property_id',$id)->get();


        $type_id = $property->ptype_id;

        $relatedProperty = Property::where('ptype_id',$type_id)->where('id','!=',$id)->orderBy('id','DESC')->limit(3)->get();


        return view('frontend.property.property_details',compact('property','multiImage','property_amen','facility','relatedProperty'));

    }// End Method


    public function PropertyMessage(Request $request){
        $pid = $request->property_id;
        $aid = $request->agent_id;

        if (Auth::check('')) {
            PropertyMessage::insert([
                'user_id' => Auth::user()->id,
                'agent_id' => $aid,
                'property_id' => $pid,
                'msg_name' => $request->msg_name,
                'msg_email' => $request->msg_email,
                'msg_phone' => $request->msg_phone,
                'message' => $request->message,
                'created_at' =>Carbon::now(),
            ]);

            $notification = array(
                'message' => 'Send Message Successfully',
                'alert-type' => 'success'
            );

            return redirect()->back()->with($notification);

        }else {
            $notification = array(
                'message' => 'Please Login Your Account First',
                'alert-type' => 'error'
            );

            return redirect()->back()->with($notification);
        }
    }


    public function AgentDetails($id){
        $agent = User::findOrFail($id);
        $property = Property::where('agent_id',$id)->get();
        $featured = Property::where('featured','1')->limit(3)->get();
        $rentproperty = Property::where('property_status','rent')->get();
        $buyproperty = Property::where('property_status','buy')->get();

        return view('frontend.agent.agent_details',compact('agent','property','featured','rentproperty','buyproperty'));
    }


    public function AgentDetailsMessage(Request $request){

        $aid = $request->agent_id;

        if (Auth::check()) {

        PropertyMessage::insert([

            'user_id' => Auth::user()->id,
            'agent_id' => $aid,
            'msg_name' => $request->msg_name,
            'msg_email' => $request->msg_email,
            'msg_phone' => $request->msg_phone,
            'message' => $request->message,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Send Message Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);



        }else{

            $notification = array(
            'message' => 'Plz Login Your Account First',
            'alert-type' => 'error'
        );

        return redirect()->back()->with($notification);
        }

    }// End Method


    public function RentProperty(){
        $property = Property::where('status','1')->where('property_status','rent')->paginate(3);
        return view('frontend.property.rent_property',compact('property'));
    }

     public function BuyProperty(){

        $property = Property::where('status','1')->where('property_status','buy')->get();

        return view('frontend.property.buy_property',compact('property'));

     }// End Method


     public function PropertyType($id)
     {
        $property = Property::where('status','1')->where('ptype_id',$id)->get();
        $ptype = PropertyType::where('id',$id)->first();

        return view('frontend.property.property_type',compact('property','ptype'));
     }


     public function BuySearchProperty(Request $request){
        $request->validate(['search' => 'required']);
         $item = $request->search;
         $searchplace = $request->place;
         $searchPtype = $request->ptype_id;

         $property = Property::where('property_name', 'like' , '%' .$item. '%')->where('property_status','buy')->with('type','place')
             ->whereHas('place', function($q) use ($searchplace){
                 $q->where('state_name','like' , '%' .$searchplace. '%');
             })
             ->whereHas('type', function($q) use ($searchPtype){
                 $q->where('type_name','like' , '%' .$searchPtype. '%');
             })
             ->get();

         return view('frontend.property.property_search',compact('property'));
     }


    public function RentPropertySeach(Request $request){

        $request->validate(['search' => 'required']);
        $item = $request->search;
        $searchplace = $request->place;
        $searchPtype = $request->ptype_id;

        $property = Property::where('property_name', 'like' , '%' .$item. '%')->where('property_status','rent')->with('type','place')
            ->whereHas('place', function($q) use ($searchplace){
                $q->where('state_name','like' , '%' .$searchplace. '%');
            })
            ->whereHas('type', function($q) use ($searchPtype){
                $q->where('type_name','like' , '%' .$searchPtype. '%');
            })
            ->get();

        return view('frontend.property.property_search',compact('property'));

    }// End Method



    public function AllPropertySeach(Request $request){

        $property_status = $request->property_status;
        $stype = $request->ptype_id;
        $splace= $request->state;
        $bedrooms = $request->bedrooms;
        $bathrooms = $request->bathrooms;

        $property = Property::where('status','1')->where('bedrooms',$bedrooms)->where('bathrooms', 'like' , '%' .$bathrooms. '%')->where('property_status',$property_status)
            ->with('type','place')
            ->whereHas('place', function($q) use ($splace){
                $q->where('place_name','like' , '%' .$splace. '%');
            })
            ->whereHas('type', function($q) use ($stype){
                $q->where('type_name','like' , '%' .$stype. '%');
            })
            ->get();

        return view('frontend.property.property_search',compact('property'));

    }// End Method

    public function StoreSchedule(Request $request){
        
    }


}
