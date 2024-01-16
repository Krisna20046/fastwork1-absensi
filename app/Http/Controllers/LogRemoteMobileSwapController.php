<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\LogRemoteMobileSwap;
use Illuminate\Support\Facades\Auth;

class LogRemoteMobileSwapController extends Controller
{
    /**
     * Submit presensi.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function submitPresensi(Request $request)
    {
        // Validasi data input
        $validator = Validator::make($request->all(), [
            'capture_latitude' => 'required|string',
            'capture_longitude' => 'required|string',
            'capture_selfie' => 'required|image', // Ubah sesuai kebutuhan (contoh: file gambar)
            'mock_status' => 'required|integer|in:0,1',
            'device_data_json' => 'nullable|json',
            // Tambahkan validasi untuk kolom-kolom lainnya sesuai kebutuhan
        ]);

        // Jika validasi gagal, kembalikan respons error
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
            ], 400);
        }

        // Mendapatkan emp_id dari pengguna yang terautentikasi
        $empId = Auth::user()->employee_id;

        // Simpan data presensi ke database
        $logRemoteMobileSwap = new LogRemoteMobileSwap;
        $logRemoteMobileSwap->emp_id = $empId;
        $logRemoteMobileSwap->capture_latitude = $request->capture_latitude;
        $logRemoteMobileSwap->capture_longitude = $request->capture_longitude;
        $logRemoteMobileSwap->mock_status = $request->mock_status;
        $logRemoteMobileSwap->device_data_json = $request->device_data_json;

        // Proses file gambar
        $imagePath = $request->file('capture_selfie')->store('selfies', 'public');
        $logRemoteMobileSwap->capture_selfie = $imagePath;

        // Tambahkan proses untuk kolom-kolom lainnya sesuai kebutuhan

        $logRemoteMobileSwap->save();

        // Berikan respons JSON sukses
        return response()->json([
            'success' => true,
            'message' => 'Presensi berhasil disubmit.',
            'data' => $logRemoteMobileSwap,
        ]);
    }
}
