<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AppUser;
use App\Models\Company;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->only('login_email', 'login_password');

        try {
            $user = AppUser::join('companies', 'app_users.company_id', '=', 'companies.id')
                ->where('login_email', $credentials['login_email'])
                ->where('login_password', md5($credentials['login_password']))
                ->select('app_users.*', 'companies.code as company_code')
                ->first();

            if (!$user) {
                return response()->json(['error' => 'Invalid credentials'], 401);
            }

            if (md5($credentials['login_password']) !== $user->login_password) {
                return response()->json(['error' => 'Invalid credentials'], 401);
            }

            $token = JWTAuth::fromUser($user);

            // Tambahkan informasi pengguna ke dalam respons
            $userInfo = [
                'id' => $user->id,
                'email' => $user->login_email,
                'company_code' => $user->company_code,
                // tambahkan informasi pengguna lainnya yang diperlukan
            ];

        } catch (\Exception $e) {
            return response()->json(['error' => 'Could not create token'], 500);
        }

        return response()->json(['token' => $token, 'user' => $userInfo]);
    }

}
