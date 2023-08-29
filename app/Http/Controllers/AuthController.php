<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\RegisterRequest;

class AuthController extends Controller
{
    public function login()
    {
        if (Auth::check()) {
            return redirect()->route('dashboard');
        } else {
            return view('auth.login');
        }
    }

    public function loginAction(LoginRequest $request)
    {
        $credentials = $request->only('username', 'password');

        if (Auth::attempt($credentials)) {
            // Authentication passed...
            return redirect()->route('dashboard');
        }
        return redirect()->back()->with('error', 'username or password do match record');
    }

    public function register(Request $request)
    {
        return view('auth.register');
    }

    public function registerAction(RegisterRequest $request)
    {
        $data = $request->all();
        $data['password'] = bcrypt($request->password);
        User::create($data);
        return redirect()->route('login');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
