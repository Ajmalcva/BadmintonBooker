@extends('layouts.mainlayout')
@section('mainContent')
<div class="row">
    <div class="mainContainer p-4">
        <form action="{{route('bookSlotsProcess')}}" method="post">
            @csrf
            <div class="row p-4 d-flex justify-content-center align-items-center">
                <h5 class="text-center">BOOK</h5>
            </div>
            <div class="row p-4 d-flex justify-content-center">
                <div class="col-md-4">COURT NAME</div>
                <div class="col-md-4">
                    <input type="text"  value="{{$court->name ?? ''}}" class="form-control" readonly>
                    <input type="text" name="courtID" value="{{$courtID}}" class="form-control" readonly>
                </div>
            </div>
            <div class="row p-4 d-flex justify-content-center">
                <div class="col-md-4">DATE</div>
                <div class="col-md-4">
                     <input type="date" name="date" value="{{$date}}" class="form-control" readonly>
                </div>
            </div>
            <input type="hidden" name="time" value="{{$time}}" class="form-control" readonly>
            <?php
                $time = (int) $time; 
            ?>
            <div class="row p-4 d-flex justify-content-center">
                <div class="col-md-4">TIME</div>
                <div class="col-md-4">
                    <input type="text" value="{{ is_numeric($time) ? ($time . ' - ' . ($time + 1)) : $time }}" class="form-control" readonly>
                </div>
            </div>        
            <hr>
            <div class="row p-4 d-flex justify-content-center">
                <div class="col-md-6"></div>
                <div class="col-md-4">
                    <input type="submit" value="BOOK" class="btn btn-danger">
                </div>
            </div>
        </form>
    </div>
</div>
@endsection