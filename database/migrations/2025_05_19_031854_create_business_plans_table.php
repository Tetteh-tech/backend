// database/migrations/xxxx_xx_xx_create_business_plans_table.php
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBusinessPlansTable extends Migration
{
    public function up()
    {
        Schema::create('business_plans', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id'); // if you want to link plans to users
            $table->string('business_type')->nullable();
            $table->string('location')->nullable();
            $table->string('target_audience')->nullable();
            $table->text('capital')->nullable();
            $table->text('business_goals')->nullable();
            $table->text('preferred_timeline')->nullable();
            $table->longText('plan_content'); // to save AI response JSON or HTML
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade'); // optional
        });
    }

    public function down()
    {
        Schema::dropIfExists('business_plans');
    }
}
