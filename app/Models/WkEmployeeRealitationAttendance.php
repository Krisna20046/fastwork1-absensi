<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WkEmployeeRealitationAttendance extends Model
{
    use HasFactory;
    protected $table = 'wk_employee_realitation_attendances';
    protected $fillable = [
        'employee_id', 'attendance_date', 'attendance_status', 'is_paid_day',
        'keterangan', 'created_on', 'updated_on', 'created_by', 'updated_by'
    ];

    public function appUser()
    {
        return $this->belongsTo(AppUser::class, 'employee_id');
    }
}
