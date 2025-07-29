<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTypeToUsersTable extends Migration
{
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->tinyInteger('type')
                  ->default(2)
                  ->comment('0=Super Admin, 1=Admin, 2=Regular User')
                  ->after('password'); // Or wherever you want the column
        });

        // Set initial super admin
        \DB::table('users')
           ->where('email', 'your_superadmin@example.com')
           ->update(['type' => 0]);
    }

    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('type');
        });
    }
}