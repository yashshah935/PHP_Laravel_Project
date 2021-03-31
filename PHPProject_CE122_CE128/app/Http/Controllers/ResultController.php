<?php

namespace App\Http\Controllers;

use App\Models\Answer_Sheet;
use App\Models\Question;
use App\Models\Quiz;
use App\Models\Result;
use Illuminate\Http\Request;

class ResultController extends Controller
{
    public function view($id,$unique){
        $result = Result::where('unique_id',$unique)->first();
        $answer = Answer_Sheet::where('quiz_id',$id)->get();
        $question = Question::all();
        $sub = Quiz::find($id)->sub;
        $student = Answer_Sheet::where('quiz_id',$id)->first();
        return view('result.view',compact(['result','answer','question','id','sub','student']));
    }
    public function result(){
        $result = Result::orderBy('quiz_id')->get();
       
        return view('result.result',compact(['result']));
    }
}
