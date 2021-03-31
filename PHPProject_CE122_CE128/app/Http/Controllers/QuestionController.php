<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\Question;
use App\Models\Quiz;

use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
    public function index($id){
        //id is quiz_id
        $questions = DB::table('questions')->where('quiz_id',$id)->get();
        return view('question.index')->with('question',$questions)->with('id',$id);
    }
    public function create($id){
        $id = Quiz::find($id)->id;
        $sub=Quiz::find($id)->sub;
        //id is quiz id       
        return view('question.create',compact('id','sub'));
    }
    public function submit($id){
        $id = Quiz::find($id)->id;
        $sub=Quiz::find($id)->sub;
        //id is quiz id
        $question = Question::all();
        return view('question.index',compact('id','question','sub'))->with('message','Quiz created successfully!');
    }
    public function store(Request $request,$id){
        //id is quiz id

        $request->validate([
            'question' => 'required',
            'op_a' => 'required',
            'op_b' => 'required',
            'op_c' => 'required',
            'op_d' => 'required',
            'correct' => 'required', 
        ]);
        
        Question::create($request->all());
        $sub=Quiz::find($id)->sub;
        $question = Question::all();
        if($request->isMethod('post')){
            $message = "Question Created";
            return view('question.index',compact('id','question','sub'))->with('message',$message);
        }
        return view('question.index',compact('id','question','sub'));
    }
}
