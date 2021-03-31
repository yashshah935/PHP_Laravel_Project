<!DOCTYPE html>
<html lang="en">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body style="background-color: lightgoldenrodyellow;">
    <div class="text-center pt-10 border rounded" style="background-color:coral;">
        <span class="text-3xl">Results </span>
    </div>
    <x-alert/>
    <div align="center" >
        @if(isset($result))
        @foreach($result as $a)
            @if ($a->unique_id == $unique)
            <div style="background-color: skyblue;" class="p-3 rounded border w-1/3  border-gray-500 ">
                <ul class= " text-2xl p-3 ">Quiz No:<strong>{{$a->quiz_id}}</strong></ul>
                    <h2 class="text-xl flex justify-between">Sub:{{$sub}} <p class="border " style="background-color: greenyellow;">Marks:{{$a->marks}}</p>
                    <span>
                    <a href="{{'/result/'.$id.'/'.$unique.'/view'}}"><button style="background-color: lightcoral;" class="p-2 border rounded">View</button></a>
                    </span>
                    </h2>
            </div>
            @endif
        @endforeach
        @endif
    </div>
</body>

</html>