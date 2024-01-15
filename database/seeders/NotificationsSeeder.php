<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Notification;
use App\Models\NotificationReceiver;
use Faker\Factory as Faker;

class NotificationsSeeder extends Seeder
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
            $notification = Notification::create([
                'company_id' => $faker->numberBetween(1, 5),
                'notif_type' => $faker->randomElement(['Info', 'Warning', 'Error']),
                'message' => $faker->sentence,
            ]);

            foreach (range(1, 5) as $subIndex) {
                NotificationReceiver::create([
                    'notification_id' => $notification->id,
                    'emp_id' => $faker->numberBetween(1, 10),
                    'pushed_at' => $faker->dateTimeThisMonth,
                ]);
            }
        }
    }
}
