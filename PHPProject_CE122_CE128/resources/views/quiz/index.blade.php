@extends ('teacher.courses.index')
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

    </head>
    <body>
    @section('content')
    <div class="text-center pt-5 border rounded">
       <b><u> New Quiz </u></b><a href="courses/quiz/create"><button style="background-color: lightgreen;" class="p-2 border rounded">Create</button></a>
    </div>
    <div>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
                        
                        
            @if($courses)
            <table style="width:70%;margin-left:auto;margin-right: auto;" class=" text-center border-separate">
            <tr>
            <th class="border border-gray-700 rounded">No.</th>
            <th class="border border-gray-700 rounded">Subject</th>
            <th class="border border-gray-700 rounded">Teacher</th>
            <th class="border border-gray-700 rounded">Action</th>
            </tr>
            @foreach($courses as $course)
            <tr>
            <td class="border border-gray-700 rounded">
                {{$course->id}}
            </td>
            <td class="border border-gray-700 rounded">
                {{$course->sub}}
            </td>
            <td class="border border-gray-700 rounded">
                {{$course->teacher_name}}
            </td>
            <td class="border border-gray-700 rounded">
                <a href="/question/{{$course->id}}"><button type="button" style="color:white;background-color:blue;padding: 16px 32px">Add</button></a>
            </td>
            </tr>
            @endforeach
            </table>
            @endif
        </div>
    </div>
    @endsection
    </body>
</html>
