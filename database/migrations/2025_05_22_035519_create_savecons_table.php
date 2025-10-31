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
        Schema::create('savecons', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('title');
            $table->longText('Address_the_suitation');
            $table->longText('Suggest_a_bunch_of_solutions');
            $table->longText('Review_best_option_to_solve_issue_and_why');
            $table->longText('Give_a_step_by_step_guide_to_carry_out_the_solution');
            $table->longText('Best_way_to_improve_business_with_business_properties');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('savecons');
    }
};
