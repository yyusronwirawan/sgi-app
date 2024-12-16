<button {{ $attributes->merge(['type' => 'submit', 'class' => 'btn btn-primary']) }} id="submit-button">
    <span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true" id="spinner"
        style="display: none;"></span>
    {{ $slot }}
</button>
