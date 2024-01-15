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
        $credentials = $request->only('login_email', 'login_password', 'company_code');

        try {
            $user = AppUser::join('companies', 'app_users.company_id', '=', 'companies.id')
                ->where('login_email', $credentials['login_email'])
                ->where('login_password', md5($credentials['login_password']))
                ->where('companies.code', $credentials['company_code']) // Pengecekan company_code
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
                'username' => $user->username,
                'email' => $user->login_email,
                'company_code' => $user->company_code,
                // tambahkan informasi pengguna lainnya yang diperlukan
            ];

        } catch (\Exception $e) {
            return response()->json(['error' => 'Could not create token'], 500);
        }

        return response()->json(['token' => $token, 'user' => $userInfo]);
    }


    public function changePassword(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|min:8',
            'confirm_password' => 'required|same:new_password',
        ]);

        // Verifikasi password lama
        if ($user->password !== md5($request->old_password)) {
            return response()->json(['message' => 'Password lama salah'], 401);
        }

        // Ganti password
        $user->password = md5($request->new_password);
        $user->save();

        return response()->json(['message' => 'Password berhasil diubah']);
    }
}
