<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Court;
use App\Models\SlotBook;
use Carbon\Carbon;


use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $courts = Court::all();
        foreach($courts as $court){
            $currentMonth = Carbon::now()->month;
            $currentYear = Carbon::now()->year;
            $count = DB::table('slot_books')->where('courtID',$court->courtID)
            ->whereYear('date', $currentYear)
            ->whereMonth('date', $currentMonth)
            ->count();
            $category = $this->assignCategory($count);
            $court->count = $count;
            $court->category = $category;

        }
        $courts =$courts->sortByDesc('count');
        return view('home',compact('courts'));
    }
    private function assignCategory($count){
        if($count>=15){
            return 'A';
        }elseif($count<15 && $count>=10){
            return 'B';

        }elseif($count<10 && $count>=5){
            return 'C';
        }else{
            return 'D';
        }

    }
    public function bookSlots(Request $request,$courtID){
        
        $date =$request->date;
        if(!$date){
            $date = date('Y-m-d');
        }
        $court= Court::where('courtID',$courtID)->first();
        $startTime = $court->startTime;
        $endTime = $court->endTime;

        $bookedSlots= DB::table('slot_books')
        ->where('courtID',$courtID)
        ->where('date',$date)->pluck('time')->toArray();
        // $bookedSlots = json_decode(json_encode($bookedSlots),true);
        return view('slotView',compact('court','date','startTime','endTime','bookedSlots'));
    }
    public function bookSlotsProcess(Request $request){
        $courtID = $request->courtID;
        $date = $request->date;
        $time = ($request->time);
        $courtID = $request->courtID;
        $userID = session('userID');

        DB::table('slot_books')->updateOrInsert(
            [
                'courtID' => $courtID,
                'date' => $date,
                'time' => $time,
            ],
            [
                'userID' => $userID,
                'created_at' => now(),
                'updated_at' => now(),
            ]
            );
        return back()->with('success','done');
    }
    public function getCourts(Request $request,$month,$year){        

        $currentMonth = $month ? (int) $month : date('m');
        $currentYear = $year ? (int) $year : date('Y');
        $date = Carbon::createFromDate($currentYear, $currentMonth, 1);

        $categories = ['A', 'B', 'C', 'D'];
        $courts = Court::all();
        $detailCourts = [];
        foreach ($categories as $cat) {
            $detailCourts[$cat] = [];
            foreach ($courts as $court) {
                $count = DB::table('slot_books')
                ->where('courtID', $court->courtID)
                ->whereYear('date', $date->year)
                ->whereMonth('date', $date->month) 
                ->count();
                $court->count = $count;
                $category = $this->assignCategory($count);
                $court->category = $category;
                if (($category == $cat)) {
                    $detailCourts[$category][] = [
                        'name' => $court->name,
                        'count' => $court->count,
                    ];
                }
            }
        }
        return view('courtView',compact('detailCourts'));

    }
}
