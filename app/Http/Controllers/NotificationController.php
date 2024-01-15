<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Notification;

class NotificationController extends Controller
{
    /**
     * Mendapatkan list notifikasi.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function list()
    {
        $notifications = Notification::with('company', 'receivers')->get();

        return response()->json([
            'success' => true,
            'data' => $notifications,
        ]);
    }

    /**
     * Mendapatkan detail notifikasi berdasarkan ID.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function detail($id)
    {
        $notification = Notification::with('company', 'receivers')->find($id);

        if (!$notification) {
            return response()->json([
                'success' => false,
                'message' => 'Notifikasi tidak ditemukan',
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $notification,
        ]);
    }
}
