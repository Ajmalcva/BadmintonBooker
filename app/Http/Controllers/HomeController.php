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
            $count = DB::table('slot_books')
            ->where('courtID',$court->courtID)
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
    private function assignRank($courtID,$date){
        $bookedCounts = DB::table('slot_books')
        ->select('courtID', DB::raw('COUNT(*) as count'))
        ->whereYear('date', $date->year)
        ->whereMonth('date', $date->month)
        ->groupBy('courtID')
        ->orderBy('count', 'desc')
        ->get();

        $rankings = [];
        foreach ($bookedCounts as $index => $booking) {
            $rankings[$booking->courtID] = $index + 1; 
        }

        return $rankings[$courtID] ?? null; 


    }

    public function bookSlots(Request $request,$courtID){
        
        $date =$request->date;
        if(!$date){
            $date = date('Y-m-d');
        }
        $carbonDate = Carbon::parse($date);
        $court= Court::where('courtID',$courtID)->first();
        $startTime = $court->startTime;
        $endTime = $court->endTime;

        $bookedSlots= DB::table('slot_books')
        ->where('courtID',$courtID)
        ->where('date',$date)->pluck('time')->toArray();

        
        return view('slotView',compact('court','date','startTime','endTime','bookedSlots'));
    }
    public function bookSlotsProcessView(Request $request){
        $courtID = $request->courtID;
        $date = $request->date;
        $time = ($request->time);
        $userID = session('userID');
        $court= Court::where('courtID',$courtID)->first();

        $carbonDate = Carbon::parse($date);
        $bookedCounts = DB::table('slot_books')
        ->where('courtID', $court->courtID)
        ->whereYear('date', $carbonDate->year)
        ->whereMonth('date', $carbonDate->month) 
        ->count();

        $message =null;
        if($bookedCounts > $court->maxLimits){
            $message ="This courts has maximum booking limits exceed for this month";
        }

        return view('bookSlotsProcessView',compact('courtID','date','time','userID','court','message'));

    }
    public function bookSlotsProcess(request $request){
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
        return back()->with('success','Your Booking is Confirmed.');

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
                        'rank' => $this->assignRank($court->courtID,$date)
                    ];
                }
            }
        }
        // dd($detailCourts);
        return view('courtView',compact('detailCourts'));

    }
}
