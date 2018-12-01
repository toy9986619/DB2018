<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResponseDiscussTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('response', function (Blueprint $table) {
            $table->increments('id');
            $table->string('response_user', 50)->comment('回覆者');
            $table->text('response_content')->comment('回覆內容');
            $table->integer('discussion_id')->unsign();
            $table->dateTime('created_at')->comment('回覆時間');
            $table->dateTime('updated_at');
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('response');     
    }
}
