<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\Quiz;
use Illuminate\Http\Request;

class QuizController extends Controller
{
    public function index()
    {   
        return view('quiz.index');
    }

    public function create()
    {
        $teacher_name=Auth::user()->name;
        return view('quiz.create')->with('teacher_name',$teacher_name);
    }

    public function store(Request $request)
    {
        if(!$request->sub){
            return redirect()->back()->with('error','Please Give Subject name');
        }
        if(!$request->quiz_date){
            return redirect()->back()->with('error','Please Give Quiz date');
        }
        
        Quiz::create($request->all()); 
        $id = Quiz::latest()->first()->id;
        return redirect("/question/$id")->with('id',$id); 
    }
}
