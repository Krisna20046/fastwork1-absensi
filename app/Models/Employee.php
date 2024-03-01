<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $fillable = [
        'division_id',
        'wk_group_id',
        'emp_status_id',
        'nomor',
        'nama',
        'jabatan',
        'tlahir',
        'tmb',
        'gender',
        'nomor_telepon',
        'email',
        'id_type',
        'id_nomor',
        'id_upload_path',
        'photo_upload_path',
        'status',
    ];
    protected $table = 'employees';

    public function user()
    {
        return $this->hasOne(AppUser::class);
    }
}
