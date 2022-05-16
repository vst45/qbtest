<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Api\BaseController;
use App\Http\Requests\AuthSigninRequest;
use App\Models\User;
use App\Services\ServiceHttp;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends BaseController
{

    public function signin(AuthSigninRequest $request)
    {
        $input = $request->validated();

        if (Auth::attempt($input)) {
            $user = Auth::user();
            $data['token'] =  $user->createToken('qb')->plainTextToken;
            $data['name'] =  $user->name;
            return ServiceHttp::sendResponse($data, 'User login successfully.');
        } else {
            return ServiceHttp::sendError('Unauthorised.', ['error' => 'Unauthorised']);
        }
    }

    public function signout()
    {
        auth()->user()->tokens()->delete();

        return ServiceHttp::sendResponse([], 'Tokens Revoked.');
    }

}
