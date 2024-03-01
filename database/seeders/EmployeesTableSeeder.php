<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('employees')->insert([
            [
                'division_id' => 1,
                'wk_group_id' => 1,
                'emp_status_id' => 1,
                'nomor' => 'EMP001',
                'nama' => 'John Doe',
                'jabatan' => 'Manager',
                'talahir' => '1990-05-15',
                'tmb' => '2020-01-01',
                'gender' => 'Male',
                'nomor_telepon' => '123456789',
                'email' => 'john.doe@example.com',
                'id_type' => 'Passport',
                'id_nomor' => 'ABC123456',
                'id_upload_path' => 'path/to/id',
                'photo_upload_path' => 'path/to/photo',
                'status' => 'Active',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'division_id' => 2,
                'wk_group_id' => 2,
                'emp_status_id' => 2,
                'nomor' => 'EMP002',
                'nama' => 'Jane Smith',
                'jabatan' => 'Developer',
                'talahir' => '1995-08-20',
                'tmb' => '2021-02-01',
                'gender' => 'Female',
                'nomor_telepon' => '987654321',
                'email' => 'jane.smith@example',
                'id_type' => 'ID Card',
                'id_nomor' => 'DEF456789',
                'id_upload_path' => 'path/to/id',
                'photo_upload_path' => 'path/to/photo',
                'status' => 'Inactive',
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }
}
