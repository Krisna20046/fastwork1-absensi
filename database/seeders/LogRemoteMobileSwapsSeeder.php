<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LogRemoteMobileSwapsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Seed data for log_remote_mobile_swaps table
        DB::table('log_remote_mobile_swaps')->insert([
            'emp_id' => 1, // Isi dengan nilai emp_id yang sesuai
            'capture_time' => now(),
            'capture_longitude' => '123.456', // Isi dengan nilai yang sesuai
            'capture_latitude' => '789.012', // Isi dengan nilai yang sesuai
            'capture_selfie' => 'path/to/selfie.jpg', // Isi dengan nilai yang sesuai
            'mock_status' => 0, // Isi dengan nilai yang sesuai
            'device_data_json' => '{"key": "value"}', // Isi dengan nilai JSON yang sesuai
            'created_by' => 'Seeder', // Isi dengan nilai yang sesuai
            'updated_by' => null, // Kosongkan atau isi dengan nilai yang sesuai
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
