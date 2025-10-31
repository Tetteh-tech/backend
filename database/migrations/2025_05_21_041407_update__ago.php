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
        Schema::table('Ai', function (Blueprint $table) {
            // Add the new column
            $table->text('executive_summary');
        });

        // Optionally, you can add a default value or other constraints
        // $table->string('description')->default('No description')->change();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('Ai', function (Blueprint $table) {
            // Drop the column if it exists
            $table->dropColumn('executive_summary');
        });
        //
    }
};
