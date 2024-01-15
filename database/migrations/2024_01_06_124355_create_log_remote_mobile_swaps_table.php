<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLogRemoteMobileSwapsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log_remote_mobile_swaps', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('emp_id')->nullable();;
            $table->datetime('capture_time')->nullable();;
            $table->string('capture_longitude')->nullable();;
            $table->string('capture_latitude')->nullable();;
            $table->string('capture_selfie')->nullable();;
            $table->integer('mock_status')->nullable();;
            $table->string('device_data_json')->nullable();;
            $table->string('created_by')->nullable();;
            $table->string('updated_by')->nullable();

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
        Schema::dropIfExists('log_remote_mobile_swaps');
    }
}
