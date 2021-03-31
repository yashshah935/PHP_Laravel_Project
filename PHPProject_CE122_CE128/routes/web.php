<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::group(['middleware' => 'auth'], function() {
    //student
    Route::group(['middleware' => 'role:student', 'prefix' => 'student', 'as' => 'student.'], function() {
        Route::resource('exams', \App\Http\Controllers\Students\ExamController::class);

        Route::get('exams/answer_sheet/{id}','App\Http\Controllers\AnswerSheetController@index');
        Route::post('exams/answer_sheet/store/{id}','App\Http\Controllers\AnswerSheetController@store');

    });
    //teacher
   Route::group(['middleware' => 'role:teacher', 'prefix' => 'teacher', 'as' => 'teacher.'], function() {
       Route::resource('courses', \App\Http\Controllers\Teachers\CourseController::class);
       
       //by yash
       //Route::get('courses','App\Http\Controllers\QuizController@index');

       Route::get('courses/quiz/create','App\Http\Controllers\QuizController@create');
       Route::post('courses/quiz/create','App\Http\Controllers\QuizController@store');

       
   });
   //admin
    Route::group(['middleware' => 'role:admin', 'prefix' => 'admin', 'as' => 'admin.'], function() {
        Route::resource('users', \App\Http\Controllers\Admin\UserController::class);
    });
});

//by yash

//QUIZ
//Route::get('start/','App\Http\Controllers\QuizController@index');
//Route::get('/quiz/create','App\Http\Controllers\QuizController@create');
//Route::post('/quiz/create','App\Http\Controllers\QuizController@store');


//Question
Route::get('/question/{id}','App\Http\Controllers\QuestionController@index');
//Route::get('/question/show/{id}','App\Http\Controllers\Students\ExamController@show');
Route::get('/question/{id}/create','App\Http\Controllers\QuestionController@index');
Route::post('/question/{id}/create','App\Http\Controllers\QuestionController@store');


//answersheet
//Route::get('/answer_sheet/{id}','App\Http\Controllers\AnswerSheetController@index');
//Route::post('/answer_sheet/store/{id}','App\Http\Controllers\AnswerSheetController@store');


//result
Route::get('/result/{id}/{unique}/view','App\Http\Controllers\ResultController@view');
Route::get('/result/result','App\Http\Controllers\ResultController@result');

