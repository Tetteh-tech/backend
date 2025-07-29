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
        Schema::create('Ai', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable(); // optional if you want user 
            // association
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('title');     // e.g. "Business Plan for a Car Wash"
            $table->longText('body');    // full AI-generated plan (JSON or HTML)
            $table->timestamps();
        });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Ai');
    }
};
