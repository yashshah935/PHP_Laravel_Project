<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questions</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    
</head>

<body style="background-color: lightgoldenrodyellow;" >
    @extends('answer_sheet.layout')
    <div class="text-center pt-5 border rounded" style="background-color:coral;">
    <h2 class="text-4xl">Best Of Luck</h2>
    <h3 class="text-2xl">SUB : {{$quiz->sub}}</h3>
    </div>
    <hr>
    <x-alert/>
    <form action="/student/exams/answer_sheet/store/{{$quiz->id}}" method="post">
    @csrf
        <div style="background-color:skyblue;" class=" flex justify-between">
            <span class="text-xl">Student Name:<input type="text" name="studentname" value = "{{$studentname}}" readonly style="margin-left: 25px;background-color: lightcyan;" class="p-3 rounded"></span>
            <span class="text-xl">Date(Quiz Created) : {{$quiz->quiz_date}}</span>
        </div>
        <div style="background-color:skyblue;" class=" flex justify-between py-2">
            <span class="text-xl">Student ID:<input type="text" name="studentid" value = "{{$studentid}}" readonly style="margin-left: 70px;background-color: lightcyan;" class="p-3 rounded"></span>
            <span class="text-xl">Quiz ID : {{$quiz->id}}</span>
        </div>
        <div class="flex justify-center py-2" >
        <ul style="width:50%">
        @if(isset($question))
            @php 
            $i = 1
            @endphp
            @foreach($question as $q)
                @if($q->quiz_id == $id)
                    <div  class="border border-gray-500" >
                        <li style="background-color:lightgreen;" ><strong>{{$i++}} {{$q->question}}</strong>
                        <hr class="border border-gray-500">
                        </li>
                        <table >

                            <tr>    
                                <td class="radio-toolbar"><input type="radio" id="{{$q->id.'a'}}" name="{{$q->id}}" value="A" checked>
                                    <label for="{{$q->id.'a'}}">[A] : {{$q->op_a}}</label>
                                </td>
                            </tr>
                            <tr>    
                                <td class="radio-toolbar"><input type="radio" id="{{$q->id.'b'}}" name="{{$q->id}}" value="B" checked>
                                    <label for="{{$q->id.'b'}}">[B] : {{$q->op_b}}</label>
                                </td>
                            </tr>
                            <tr>    
                                <td class="radio-toolbar"><input type="radio" id="{{$q->id.'c'}}" name="{{$q->id}}" value="C" checked>
                                    <label for="{{$q->id.'c'}}">[C] : {{$q->op_c}}</label>
                                </td>
                            </tr>
                            <tr>    
                                <td class="radio-toolbar"><input type="radio" id="{{$q->id.'d'}}" name="{{$q->id}}" value="D" checked>
                                    <label for="{{$q->id.'d'}}">[D] : {{$q->op_d}}</label>
                                </td>
                            </tr>
                        </table>
                        <br/>
                    </div>
                    <br/>
                @endif
            @endforeach
            <a href="/student/exams" style="background-color: lightcoral;" class="p-2 border rounded">Back</a>
            <input type="submit" value="Submit" style="background-color: lightskyblue;" class="p-2 border rounded">
        </form>
    @else
    <i>There is no questions</i>
    @endif
    </ul>
    </div>

</body>

</html>