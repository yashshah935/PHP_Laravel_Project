<!DOCTYPE html>
<html lang="en">

<head>
    <title>Create Question</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>

<body  style="background-color: lightgoldenrodyellow;">
    @if(isset($message))
    <div class="alert alert-success" style="background-color:green">
        <strong>{{$message}}</strong>
    </div>
    @endif
    <div class="text-center pt-10 border rounded" style="background-color:coral;">
    <h2 class="text-2xl ">Create Question</h2>
    </div>
    <x-alert/>
    <div style="background-color: lightgoldenrodyellow;" class="rounded  text-center flex justify-center border border-gray-400">
    <form action="{{'/question/'.$id.'/create'}}" method="POST" class="py-5">
        @csrf
        <input type="text" name="quiz_id" value="{{$id}}" hidden>
        <div>
            Question: <textarea rows="1" cols="50" name="question"  style="background-color: lightgrey;" class="p-3 rounded" placeholder="Enter Question here.."></textarea>
        </div>
        <div>
        Option A : <textarea rows="1" cols="25" name="op_a"  style="background-color: lightgrey;" class="p-3 rounded" placeholder="A"></textarea> 
        </div>
        <div>
        Option B : <textarea rows="1" cols="25" name="op_b"   style="background-color: lightgrey;" class="p-3 rounded" placeholder="B "></textarea> 
        </div>
        <div>
        Option C : <textarea rows="1" cols="25" name="op_c"  style="background-color: lightgrey;" class="p-3 rounded" placeholder="C"></textarea> 
        </div>
        <div>
        Option D : <textarea rows="1" cols="25" name="op_d"  style="background-color: lightgrey;" class="p-3 rounded" placeholder="D"></textarea> 
        </div>
        <div class="px-2">
            Choos correct option:
            <input type="radio" id="a" name="correct" value="A" style="margin-left: 15px;" >A 
            <input type="radio" id="a" name="correct" value="B" style="margin-left: 15px;">B 
            <input  type="radio" id="a" name="correct" value="C" style="margin-left: 15px;">C 
            <input  type="radio" id="a" name="correct" value="D" style="margin-left: 15px;" >D
        </div>
        <div>
            <input type="submit" name="create" value="Create" style="background-color: lightgreen;" class="p-3 border rounded">
            <button type="button" ><a href="/teacher/courses" style="background-color: lightgreen;"class="p-3 border rounded">Home</a></button>
        </div>
    </form>
     </div>

     <div class="text-center pt-10 border rounded" style="background-color:coral;">
                <h2 class="text-2xl ">All Questions</h2>
        </div>
    @if($question)
    @php
    $i = 1
    @endphp
        @foreach($question as $q)
            @if($q->quiz_id == $id)
            
                <div  class="border border-gray-700 mx-20">
                <li style="background-color:lightgray;" ><strong>{{$i++}}. {{$q->question}}</strong>
                <hr class="border border-gray-500">
                </li>
                <ul >
                <li>A] : {{$q->op_a}}</li>
                <li>B] : {{$q->op_b}}</li>
                <li>C] : {{$q->op_c}}</li>
                <li>D] : {{$q->op_d}}</li>
                <br/>
                <li style="background-color: lightgreen;" class="flex justify-between" >
                <p>Correct:{{$q->correct}}</p>
               
                </li>
                </ul>
                </div>
                <br/>
            @endif
        @endforeach
    @endif
</body>

</html>