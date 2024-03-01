<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('division_id')->nullable();;
            $table->unsignedBigInteger('wk_group_id')->nullable();;
            $table->unsignedBigInteger('emp_status_id')->nullable();;
            $table->string('nomor')->nullable();;
            $table->string('nama')->nullable();;
            $table->string('jabatan')->nullable();;
            $table->date('talahir')->nullable();;
            $table->date('tmb')->nullable();;
            $table->string('gender')->nullable();;
            $table->string('nomor_telepon')->nullable();;
            $table->string('email')->nullable();;
            $table->string('id_type')->nullable();;
            $table->string('id_nomor')->nullable();;
            $table->string('id_upload_path')->nullable();;
            $table->string('photo_upload_path')->nullable();;
            $table->string('status')->nullable();;
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
        Schema::dropIfExists('employees');
    }
}
