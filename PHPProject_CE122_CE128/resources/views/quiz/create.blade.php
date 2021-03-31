@extends ('teacher.courses.index')
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quiz Create</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>

<body>
@section('content')
    <div class="text-center pt-10 border rounded">
    <h2 class="text-2xl">Create Quiz</h2>
    <x-alert/>
    <form action="" method="POST" class="py-5">
        @csrf
        <table style="margin-left:auto;margin-right:auto; width:30% border-padding:2;">
        <tr>
            <td>Subject Name:</td>
            <td><input type="text" name="sub" placeholder="Enter Subject name"  class="p-3 rounded"></td>
        </tr>
        <tr>
            <td>Quiz date:</td>
            <td><input type="date" name="quiz_date" placeholder="Enter Quiz date" class="p-3 rounded"></td>
        </tr>
        <tr>
            <td>Teacher name:</td>
            <td><input type="text" name="teacher_name" placeholder="Enter Teacher Name" class="p-3 rounded" value={{ $teacher_name }}></td>
        </tr>
        <tr>
            <th colspan="2"><input type="submit" name="create" value="Create" style="background-color: lightgreen;" class="p-3 border rounded"></th>
        </tr>
        </table>
    </form>
    </div>
@endsection
</body>

</html>