<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEvolutionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('evolution', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('base_id')->comment('基底寵物編號');
            $table->integer('target_id')->comment('目標寵物編號');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('evolution');
    }
}
