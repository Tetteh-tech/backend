<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropConsultantForeignKeyFromBlogs extends Migration
{
    public function up()
    {
        Schema::table('blogs', function (Blueprint $table) {
            // First drop the foreign key constraint
            $table->dropForeign(['consultant_id']);
            
            // Then you can drop the index if you want
            // (This is optional - the index might still be useful for queries)
            $table->dropIndex('blogs_consultant_id_foreign');
            
            // If you want to keep the column but remove the relationship:
            // $table->unsignedBigInteger('consultant_id')->nullable()->change();
            
            // If you want to completely remove the column:
            // $table->dropColumn('consultant_id');
        });
    }

    public function down()
    {
        Schema::table('blogs', function (Blueprint $table) {
            // If you want to make the migration reversible
          
            
            // Then recreate the foreign key
            $table->foreign('consultant_id')
                  ->references('id')
                  ->on('consultants')
                  ->onDelete('set null'); // or 'cascade' depending on your needs
        });
    }
}