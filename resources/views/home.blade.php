@extends('layouts.mainlayout')
@section('mainContent')
<div class="row">
    <div class="mainContainer p-4 m-1">
        <div class="mainContainer my-4 p-4" style="background-color:#1a2e35; color:#fff; position: sticky; top: 0; z-index: 1000;"">
            <div class="row">
                <div class="col-md-2">IMAGE</div>
                <div class="col-md-2">COURT NAME</div>
                <div class="col-md-2">PRICE</div>
                <div class="col-md-2">LOCATION</div>
                <div class="col-md-2">COUNT</div>
                <div class="col-md-2"></div>

            </div>
        </div>
        @foreach($courts as $court)
            <div class="mainContainer my-4 p-4" style="background-color:#8ce78c;">
                <div class="row">
                    <div class="col-md-2">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="images/court.jpg" alt="" width ="100" height="100">
                            </div>
                            <div class="col-md-6 justify-content-right" style="color:red; font-size:30px !important;">
                                <b>{{$court->category}}</b>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">{{$court->name}}</div>
                    <div class="col-md-2">₹{{$court->price}}</div>
                    <div class="col-md-2">{{$court->location}}</div>
                    <div class="col-md-2">{{$court->count}}</div>
                    <div class="col-md-2"><a href="{{ route('bookSlot', ['courtID' => $court->courtID]) }}">Book Slot</a></div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
