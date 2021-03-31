
<x-app-layout>
<x-slot name="header">
        <h2 class="text-center font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Results') }}
        </h2>
    </x-slot>
    <body>
    <div style="background-color: lightgoldenrodyellow;">
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
                        
                        
            @if($result)
            <table style="width:70%;margin-left:auto;margin-right: auto;" class="p-3 text-center border-separate">
            <tr>
            <th class="border border-gray-700 rounded">No.</th>
            <th class="border border-gray-700 rounded">Quiz No</th>
            <th class="border border-gray-700 rounded">Student no</th>
            <th class="border border-gray-700 rounded">Marks</th>
            </tr>
            @php
                $i=1;
            @endphp
            @foreach($result as $r)
            <tr>
            <td class="border border-gray-700 rounded">
                {{$i++}}
            </td>
            <td class="border border-gray-700 rounded">
                {{$r->quiz_id}}
            </td>
            <td class="border border-gray-700 rounded">
                {{$r->student_no}}
            </td>
                
            <td class="border border-gray-700 rounded">
                <button type="button" style="color:white;background-color:green;padding: 16px 32px" class="rounded"> {{$r->marks}}</button>
            </td>
            </tr>
            @endforeach
            </table>
            @endif
        </div>
    </div>
   
    </body>
</x-app-layout>
