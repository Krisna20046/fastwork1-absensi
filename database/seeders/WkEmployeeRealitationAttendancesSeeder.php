<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class WkEmployeeRealitationAttendancesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach (range(1, 20) as $index) {
        DB::table('wk_employee_realitation_attendances')->insert([
            'employee_id' => $faker->numberBetween(1, 10),
            'attendance_date' => $faker->date,
            'attendance_status' => $faker->randomElement(['Hadir', 'Sakit', 'Izin']),
            'is_paid_day' => $faker->boolean,
            'keterangan' => $faker->text,
            'capture_longitude' => $faker->longitude,
            'capture_latitude' => $faker->latitude,
            'capture_selfie' => $faker->imageUrl(640, 480),
            'created_on' => now(),
            'updated_on' => now(),
            'created_by' => 1, // Sesuaikan dengan user ID yang sesuai
            'updated_by' => 1, // Sesuaikan dengan user ID yang sesuai
        ]);
        }
    }
}
