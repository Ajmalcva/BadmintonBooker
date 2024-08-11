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
        Schema::create('slot_books', function (Blueprint $table) {
            $table->bigIncrements('SlotBookID'); 
            $table->foreignId('userID')->constrained('users')->onDelete('cascade'); 
            $table->unsignedBigInteger('courtID'); 
            $table->date('date');
            $table->time('time'); 
            $table->timestamps(); 

            $table->foreign('courtID')->references('courtID')->on('courts')->onDelete('cascade');

            $table->index('date');
            $table->index('time');
            $table->index('courtID');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('slot_books');
    }
};
