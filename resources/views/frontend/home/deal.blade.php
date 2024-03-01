@php
    $hotproperty = App\Models\Property::where('status','1')->where('hot','1')->limit(3)->get();
@endphp


<section class="deals-section sec-pad">
    <div class="auto-container">
        <div class="sec-title">
            <h5>Hot Property</h5>
            <h2>Our Best Deals</h2>
        </div>

        <div class="row clearfix">

            @foreach($hotproperty as $hot)
            <div class="col-lg-4 col-md-6 col-sm-12 feature-block">
                <div class="feature-block-one wow fadeInUp animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><img src="{{ asset($hot->property_thambnail) }}" alt=""></figure>
                            <div class="batch"><i class="icon-11"></i></div>
                            <span class="category">Hot</span>
                        </div>
                        <div class="lower-content">
                            <div class="author-info clearfix">
                                <div class="author pull-left">
                                    @if( $hot->agent_id == Null )
                                    <figure class="author-thumb"><img src="{{ asset('upload/jowel.jpg') }}" alt=""></figure>
                                    <h6>Admin</h6>
                                    @else
                                        <figure class="author-thumb"><img src="{{ (!empty($hot->user->photo)) ? url('upload/agent_images/'.$hot->user->photo) : url('upload/no_image.jpg') }}" alt=""></figure>
                                        <h6>{{ $hot->user->name }}</h6>
                                    @endif
                                </div>
                                <div class="buy-btn pull-right"><a href="property-details.html">For {{ $hot->property_status }}</a></div>
                            </div>
                            <div class="title-text"><h4><a href="property-details.html">{{ $hot->property_name }}</a></h4></div>
                            <div class="price-box clearfix">
                                <div class="price-info pull-left">
                                    <h6>Start From</h6>
                                    <h4>${{ $hot->lowest_price }}</h4>
                                </div>
                                <ul class="other-option pull-right clearfix">
                                    <li><a href="property-details.html"><i class="icon-12"></i></a></li>
                                    <li><a href="property-details.html"><i class="icon-13"></i></a></li>
                                </ul>
                            </div>
                            <p>{{ $hot->short_descp }}</p>
                            <ul class="more-details clearfix">
                                <li><i class="icon-14"></i>{{ $hot->bedrooms }} Beds</li>
                                <li><i class="icon-15"></i>{{ $hot->bathrooms }} Baths</li>
                                <li><i class="icon-16"></i>{{ $hot->garage_size }} Sq Ft</li>
                            </ul>
                            <div class="btn-box"><a href="{{ url('property/details/'.$hot->id.'/'.$hot->property_slug) }}" class="theme-btn btn-two">See Details</a></div>
                        </div>
                    </div>
                </div>
            </div>

            @endforeach



        </div>

    </div>
</section>
