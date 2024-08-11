@extends('layouts.mainlayout')
@section('mainContent')
<div class="row">
    <div class="mainContainer p-4 m-1">
        <form action="">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <input type="date" class="form-control" value="{{$date}}" name="date">
                </div>
                <div class="col-md-6">
                    <input class="btn btn-danger" type="submit" value="apply">
                </div>
            </div>
        </form>
    </div>
</div>
<div class="row">
    <div class="mainContainer p-4 m-1">
            @php
                $startTime = strtotime($startTime);
                $endTime = strtotime($endTime);
            @endphp
            @for ($i = $startTime; $i <= $endTime; $i += 3600)
                @php
                    $displayTimeStart = date('H:i:00', $i);
                    $displayTimeEnd = date('H:i:00', $i += 3600);

                @endphp
                @if(in_array($displayTimeStart,$bookedSlots))
                    <div class="mainContainer my-4 p-4" style="background-color:#ed655e;">
                        <div class="row">
                            <div class="col-md-2">{{$displayTimeStart}}  -  {{$displayTimeEnd}}</div>
                            <div class="col-md-2">THIS SLOT IS ALREADY BOOKED</div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2">
                            </div>
                        </div>
                    </div>
                @else
                    <div class="mainContainer my-4 p-4" style="background-color:#8ce78c;">
                        <div class="row">
                            <div class="col-md-2">{{$displayTimeStart}}  -  {{$displayTimeEnd}}</div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2">
                                <a href="{{route('bookSlotsProcessView',['date' =>$date,'time' => $displayTimeStart , 'courtID'=>$court->courtID])}}">BOOK</a>
                            </div>
                        </div>
                    </div>
                @endif
               
            @endfor
    </div>
</div>
@endsection