<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $table = 'companies';
    protected $fillable = [
        'code', 'ent', 'nama', 'nomor_telepon', 'email', 'default_timezone', 'bidang_usaha',
        'known_by_id', 'website', 'alamat', 'kota', 'utility_form_cuti', 'utility_form_ijin',
        'utility_form_break', 'utility_form_lembur', 'utility_form_tukar_shift',
        'utility_monthend_open', 'utility_monthend_close', 'created_on', 'updated_on',
        'created_by', 'updated_by', 'utility_updated_on', 'utility_cuti_before_day',
        'utility_biometrik_hybrid', 'utility_onsite_only', 'mobile_app_active',
        'utility_cuti_custom_date', 'was_activate', 'was_setting'
    ];

    public function appUsers()
    {
        return $this->hasMany(AppUser::class, 'company_id');
    }

    public function notifications()
    {
        return $this->hasMany(Notification::class, 'company_id');
    }
}
