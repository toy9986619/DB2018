<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReplyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reply', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->comment('回覆者');
            $table->text('content')->comment('回覆內容');
            $table->integer('article_id')->unsign();
            $table->dateTime('created_at');
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
        Schema::drop('reply');     
    }
}
