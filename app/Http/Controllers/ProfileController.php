<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\AppUser;
use Illuminate\Support\Facades\Storage;


class ProfileController extends Controller
{
    public function update(Request $request)
    {
        $request->validate([
            'photo_upload_path' => 'required|image',
        ]);
        $user = auth()->user(); // Mengambil instance user yang sedang login
        $employee = $user->employee; // Mengambil instance employee yang terkait dengan user

        // Hapus foto profil sebelumnya jika ada
        if ($employee->photo_upload_path) {
            Storage::delete($employee->photo_upload_path);
        }

        // Simpan foto profil yang baru di storage
        $path = $request->file('photo_upload_path')->store('uploadbox');

        // Perbarui kolom photo_upload_path pada instance employee yang terkait
        $employee->photo_upload_path = $path;
        $employee->save();

        return response()->json([
            'success' => true,
            'message' => 'Profile photo updated successfully',
            'photo_upload_path' => $path
        ]);
    }

    public function updateNotif(Request $request)
    {
        $request->validate([
            'active_notification' => 'required|numeric|in:0,1',
        ]);
        $user = auth()->user(); // Mengambil instance user yang sedang login

        $user->active_notification = $request->active_notification;
        $user->save();
        return response()->json([
            'success' => true,
            'message' => 'Notification updated successfully',
            'active_notification' => $request->active_notification
        ]);
    }

    public function updateEmailNotif(Request $request)
    {
        $request->validate([
            'email_notif' => 'required|numeric|in:0,1',
        ]);
        $user = auth()->user(); // Mengambil instance user yang sedang login

        $user->email_notif = $request->email_notif;
        $user->save();
        return response()->json([
            'success' => true,
            'message' => 'Email notification updated successfully',
            'email_notif' => $request->email_notif
        ]);
    }
}
