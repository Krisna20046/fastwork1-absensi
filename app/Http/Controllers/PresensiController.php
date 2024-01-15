<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WkEmployeeRealitationAttendance;

class PresensiController extends Controller
{
    /**
     * Mendapatkan list presensi.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function list()
    {
        $presences = WkEmployeeRealitationAttendance::all();

        return response()->json([
            'success' => true,
            'data' => $presences,
        ]);
    }

    /**
     * Mendapatkan detail presensi berdasarkan ID.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function detail($id)
    {
        $presence = WkEmployeeRealitationAttendance::find($id);

        if (!$presence) {
            return response()->json([
                'success' => false,
                'message' => 'Presensi tidak ditemukan',
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $presence,
        ]);
    }

    public function search(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date_format:Y-m-d',
            'end_date' => 'required|date_format:Y-m-d|after_or_equal:start_date',
        ]);

        $start_date = $request->start_date;
        $end_date = $request->end_date;

        $presences = WkEmployeeRealitationAttendance::whereBetween('attendance_date', [$start_date, $end_date])->get();

        return response()->json([
            'success' => true,
            'data' => $presences,
        ]);
    }
}
