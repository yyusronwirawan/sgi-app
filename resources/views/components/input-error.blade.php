@props(['messages'])

@if ($messages)
    <div {{ $attributes->merge(['class' => 'text-danger']) }} role="alert">
        <ul class="mb-0">
            @foreach ((array) $messages as $message)
                <li>{{ $message }}</li>
            @endforeach
        </ul>
    </div>
@endif
