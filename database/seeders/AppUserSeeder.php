<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AppUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('app_users')->insert([
            'employee_id' => 1,
            'company_id' => 1,
            'login_email' => 'user1@example.com',
            'login_password' => md5('password123'),
            'face_train_path' => 'path/to/face/training',
            'ad_status' => 'active',
            'last_device_logined' => 'device123',
            'created_on' => Carbon::now(),
            'updated_on' => null,
            'created_by' => 1,
            'updated_by' => null,
            'coor_lat' => -6.2088,
            'coor_lng' => 106.8456,
            'email_notif' => 1,
            'active_notification' => 1
        ]);
    }
}
