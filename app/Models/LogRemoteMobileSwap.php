<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LogRemoteMobileSwap extends Model
{
    protected $table = 'log_remote_mobile_swaps';
    protected $fillable = [
        'emp_id', 'capture_time', 'capture_longitude', 'capture_latitude',
        'capture_selfie', 'mock_status', 'device_data_json', 'created_on',
        'updated_on', 'created_by', 'updated_by'
    ];

    public function appUser()
    {
        return $this->belongsTo(AppUser::class, 'emp_id');
    }
}
