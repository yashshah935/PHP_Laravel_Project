<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\Answer_Sheet;
use App\Models\Question;
use Illuminate\Http\Request;
use  App\Models\Quiz;
use App\Models\Result;


class AnswerSheetController extends Controller
{
    public function index($id){
        
        $quiz=Quiz::find($id);
        //id is quiz id
        $question = Question::all();
        $studentname=Auth::user()->name;
        $studentid=Auth::user()->student_id;
        return view('answer_sheet.index',compact('id','quiz','question','studentname','studentid'));
    }
    public function store(Request $request,$id){
        $request->validate([
            'studentname' => 'required',
            'studentid' => 'required',
            ]);
        
        $student_name = $request->studentname;
        $student_id = $request->studentid;
        $i = 1;
        $marks = 0;
        foreach($request->all() as $key=>$value){
            $i++;
            if($i > 4){
                $unique = $student_id.$key;
                if(Answer_Sheet::where('unique',$unique)->first() == null){
                    $correct = Question::find($key)->correct;
                    Answer_Sheet::create([
                        'student_no'=>$student_id,
                        'q_id'=>$key,
                        'correct' => $correct,
                        'marked'=>$value,
                        'quiz_id'=>$id,
                        'unique'=>$unique]
                        );
                    if($value == $correct){
                        $marks++;
                    }

                }
                else{
                    return redirect()->back()->with('error','You Have already attempt this quiz');
                }
               
                
            }
           

        }
        Result::create([
            'student_no'=> $student_id,
            'unique_id' => $unique,
            'marks' => $marks,
            'quiz_id'=>$id,
        ]);
        $result = Result::all();
        $answer = Answer_Sheet::all();
        $sub = Quiz::find($id)->sub;
        return view('result.index',compact(['answer','sub','result','unique','id','student_id']));
        
    }
}
