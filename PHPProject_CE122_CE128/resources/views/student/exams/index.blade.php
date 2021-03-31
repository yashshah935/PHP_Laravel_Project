<x-student-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight ">
            <p class="text-2xl text-center">{{ __('Exams') }}</p>
        </h2>
    </x-slot>

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
                <a href="exams/answer_sheet/{{$course->id}}"><button type="button" style="color:white;background-color:blue;padding: 16px 32px">Solve</button></a>
            </td>  
            </tr>
            @endforeach
            </table>
            @endif
        </div>
    </div>
</x-student-layout>