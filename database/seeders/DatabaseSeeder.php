<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this ->call(AppUserSeeder::class);
        $this ->call(CompanySeeder::class);
        $this ->call(WkEmployeeRealitationAttendancesSeeder::class);
        $this ->call(NotificationsSeeder::class);
        $this ->call(LogRemoteMobileSwapsSeeder::class);
    }
}
