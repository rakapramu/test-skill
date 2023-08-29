@extends('auth.layout')
@section('title')
    Login
@endsection
@section('content')
    <div class="card-body">
        <h4 class="mb-2 text-center">Login Form</h4>
        @if (session()->has('error'))
            <div class="alert alert-danger">
                {{ session()->get('error') }}
            </div>
        @endif
        <form id="formAuthentication" class="mb-3" action="{{ route('loginAction') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control @error('username') is-invalid @enderror" id="username"
                    name="username" placeholder="Enter your username" />
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
            <span>Don't have an account?</span>
            <a href="{{ route('register') }}">
                <span>Sign in instead</span>
            </a>
        </p>
    </div>
@endsection
