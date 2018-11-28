<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActiveSkillTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('active_skill', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50)->comment('主動技能名稱');
            $table->string('description')->comment('主動技能敘述');
            $table->integer('min_cd')->comment('最小冷卻時間');
            $table->integer('max_cd')->comment('最大冷卻時間');

            $table->unique('name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('active_skill');
    }
}
