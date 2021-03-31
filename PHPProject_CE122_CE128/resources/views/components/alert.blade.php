<div class="text-center text-xl">
    @if(session('error'))   
        <div class="p-3 bg-red-300" >
        {{ session('error') }}
        </div>
    @elseif(session('message')).
        <div class="p-3 bg-green-400" >
        {{ session('message') }}
        </div>
    @endif

    @if($errors->any())
    <div class="p-3 bg-red-300">
    <ul>
        @foreach($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
    </ul>
    </div>
    @endif
</div>