<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\LogRemoteMobileSwap;

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
            'mock_status' => 'required|integer',
            'device_data_json' => 'nullable|json',
        ]);

        // Jika validasi gagal, kembalikan respons error
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
            ], 400);
        }

        // Simpan data presensi ke database
        $logRemoteMobileSwap = new LogRemoteMobileSwap;
        $logRemoteMobileSwap->capture_latitude = $request->capture_latitude;
        $logRemoteMobileSwap->capture_longitude = $request->capture_longitude;
        $logRemoteMobileSwap->mock_status = $request->mock_status;
        $logRemoteMobileSwap->device_data_json = $request->device_data_json;

        // Proses file gambar
        $imagePath = $request->file('capture_selfie')->store('selfies', 'public');
        $logRemoteMobileSwap->capture_selfie = $imagePath;
        // Link File
        //http://127.0.0.1:8000/storage/selfies/image-name.jpg

        $logRemoteMobileSwap->save();

        // Berikan respons JSON sukses
        return response()->json([
            'success' => true,
            'message' => 'Presensi berhasil disubmit.',
            'data' => $logRemoteMobileSwap,
        ]);
    }
}
