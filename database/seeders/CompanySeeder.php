<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('companies')->insert([
            'code' => 'COMP1',
            'ent' => 'Enterprise 1',
            'nama' => 'Company 1',
            'nomor_telepon' => '123456789',
            'email' => 'company1@example.com',
            'default_timezone' => 'Asia/Jakarta',
            'bidang_usaha' => 'IT'
        ]);
    }
}
