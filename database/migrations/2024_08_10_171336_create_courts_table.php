<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('courts', function (Blueprint $table) {
            $table->bigIncrements('courtID');
            $table->string('name')->unique();
            $table->string('nameShort');
            $table->string('price');
            $table->string('location');
            $table->string('image')->nullable();
            $table->time('startTime'); 
            $table->time('endTime');
            $table->integer('maxLimits');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('courts');
    }
};
