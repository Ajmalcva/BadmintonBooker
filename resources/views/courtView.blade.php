@extends('layouts.mainlayout')
@section('mainContent')
<div class="row">
    <div class="mainContainer p-4">
        <div class="row">
            @foreach($detailCourts as $cat=>$detail)
                <div class="col-md-6  p-4" >
                    <h4 class="text-danger" style="font-size:30px;">{{$cat}}</h4>
                    @foreach($detail as $det)
                        <div class="row mainContainer p-4" style="background:#1a2e35; color:#fff;">
                            <div class="col">
                                <span>{{$det['name']}}</span>
                                <span>{{$det['count']}}</span>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection