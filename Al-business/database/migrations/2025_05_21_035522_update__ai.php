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
       Schema::create('ai', function (Blueprint $table) {
    $table->id();
    $table->text('title');
    $table->longText('executive_summary');
    $table->longText('things_needed_to_start');
    $table->longText('market_analysis');
    $table->longText('marketing_strategy');
    $table->longText('financial_plan');
    $table->longText('operations_plan');
    $table->timestamps();
});

        // Optionally, you can add a default value or other constraints
        // $table->string('description')->default('No description')->change();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('ai', function (Blueprint $table) {
            // Drop the column if it exists
            $table->dropColumn('description');
        });
    }
};
