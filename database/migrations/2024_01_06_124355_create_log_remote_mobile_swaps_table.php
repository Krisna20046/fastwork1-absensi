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
            $table->unsignedBigInteger('emp_id');
            $table->timestamp('capture_time');
            $table->decimal('capture_longitude', 10, 8);
            $table->decimal('capture_latitude', 11, 8);
            $table->text('capture_selfie');
            $table->string('mock_status');
            $table->text('device_data_json');
            $table->timestamp('created_on')->useCurrent();
            $table->timestamp('updated_on')->nullable();
            $table->unsignedBigInteger('created_by');
            $table->unsignedBigInteger('updated_by')->nullable();

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
