<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::table('blogs', function (Blueprint $table) {
        // 1. Make sure consultant_id column exists and is unsigned
        if (!Schema::hasColumn('blogs', 'consultants_id')) {
            $table->unsignedBigInteger('consultants_id')->after('id');
        }
        
        // 2. Add foreign key only if consultants table exists
        if (Schema::hasTable('consultants')) {
            $table->foreign('consultants_id')
                  ->references('id')
                  ->on('consultants')
                  ->onDelete('cascade');
        }
    });
}

public function down()
{
    Schema::table('blogs', function (Blueprint $table) {
        $table->dropForeign(['consultants_id']);
        $table->dropColumn('consultants_id');
    });
}
};
