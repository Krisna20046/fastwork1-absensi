<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAppUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('app_users', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('employee_id');
            $table->unsignedBigInteger('company_id');
            $table->string('login_email');
            $table->string('login_password');
            $table->string('face_train_path')->nullable();
            $table->string('ad_status');
            $table->string('last_device_logined');
            $table->timestamp('created_on')->useCurrent();
            $table->timestamp('updated_on')->nullable();
            $table->unsignedBigInteger('created_by');
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->string('coor_lat', 10, 8)->nullable();
            $table->string('coor_lng', 11, 8)->nullable();
            $table->unsignedBigInteger('email_notif')->nullable();
            $table->unsignedBigInteger('active_notification')->nullable();

            // Add any additional columns as needed

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('app_users');
    }
}
