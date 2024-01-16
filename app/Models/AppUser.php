<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Foundation\Auth\User as Authenticatable;

class AppUser extends Authenticatable implements JWTSubject
{

    protected $table = 'app_users';
    protected $fillable = [
        'employee_id', 'company_id', 'login_email', 'login_password', 'face_train_path',
        'ad_status', 'last_device_logined', 'created_on', 'updated_on', 'created_by',
        'updated_by', 'coor_lat', 'coor_lng'
    ];

    public function company()
    {
        return $this->belongsTo(Company::class, 'company_id');
    }

    public function presences()
    {
        return $this->hasMany(WkEmployeeRealitationAttendance::class, 'employee_id');
    }

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [
            'company_code' => $this->company->code,
        ];
    }
}
