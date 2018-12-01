<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDiscussionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('discussion', function (Blueprint $table) {
            $table->increments('id');
            $table->string('discuss_user', 50)->comment('發文者');
            $table->text('title')->comment('標題');
            $table->longText('content')->comment('內容');
            $table->dateTime('created_at')->comment('發文時間');
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
        Schema::drop('discussion');
    }
}
