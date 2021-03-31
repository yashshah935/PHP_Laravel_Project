
<x-teacher-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight" >
            <p class="text-2xl text-center">{{ __('Courses List') }}</p>
        </h2>
    </x-slot>

    <div>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
        @yield('content')
        </div>
    </div>
</x-teacher-layout>
