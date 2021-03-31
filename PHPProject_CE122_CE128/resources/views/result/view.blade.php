<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questions</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>

<body >
<x-app-layout>
    <div style="background-color:white;" class="text-center pt-5 border rounded">
    <h2 class="text-3xl "><b>Solution</b></h2>
    </div>
    <hr>
    <x-alert/>
    <div style="background-color:skyblue;" class=" flex justify-between">
        <button style="background-color: lightgreen;" class=" p-2 text-2xl rounded border">Your Total Marks  &#x21a3; {{$result->marks}}</button>
   
        <button style="background-color: lightcoral;" class=" p-2 text-2xl rounded border">SUB : {{$sub}} </button>

    </div>
    <div class="flex justify-center " style="background-color: lightgoldenrodyellow;">
    <ul >
    @if(isset($question) && isset($result) && isset($answer))
        @php 
        $i = 1
        @endphp
        @foreach($question as $q)
            @if($q->quiz_id == $id)
                <div  class="border border-gray-500">
                <li style="background-color:lightgray;" ><strong>{{$i++}} {{$q->question}}</strong>
                <hr class="border border-gray-500">
                </li>
                <ul >
                <li>A] : {{$q->op_a}}</li>
                <li>B] : {{$q->op_b}}</li>
                <li>C] : {{$q->op_c}}</li>
                <li>D] : {{$q->op_d}}</li>
                <br/>
                <li style="background-color: lightblue;" class="flex justify-between" >
                <p>Correct:{{$q->correct}}</p>
                </li>
                </ul>
                </div>
                <br/>
            @endif
        @endforeach
        <a href="/student/exams" style="background-color: lawngreen;" class="flex justify-center p-2 border rounded">Home</a>
    @else
    <i>There is no questions</i>
    @endif
    </ul>
    </div>
</x-app-layout>
</body>

</html>