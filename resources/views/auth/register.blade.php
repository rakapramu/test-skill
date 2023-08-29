@extends('auth.layout')
@section('title')
    Register
@endsection
@section('content')
    <div class="card-body">
        <h4 class="mb-2 text-center">Register Form</h4>

        <form class="mb-3" action="{{ route('registerAction') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name"
                    placeholder="Enter your name" value="{{ old('name') }}" />
                @error('name')
                    <span class="invalid-feedback">{{ $message }}</span>
                @enderror
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control @error('username') is-invalid @enderror" id="username"
                    name="username" placeholder="Enter your username" value="{{ old('username') }}" />
                @error('username')
                    <span class="invalid-feedback">{{ $message }}</span>
                @enderror
            </div>
            <div class="mb-3 form-password-toggle">
                <label class="form-label" for="password">Password</label>
                <div class="input-group input-group-merge">
                    <input type="password" id="password" class="form-control @error('password') is-invalid @enderror"
                        name="password"
                        placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                        aria-describedby="password" />
                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                    @error('password')
                        <span class="invalid-feedback">{{ $message }}</span>
                    @enderror
                </div>
            </div>
            <button class="btn btn-primary d-grid w-100" type="submit">Sign up</button>
        </form>

        <p class="text-center">
            <span>Already have an account?</span>
            <a href="{{ route('login') }}">
                <span>Sign in instead</span>
            </a>
        </p>
    </div>
@endsection
