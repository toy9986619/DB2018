<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaderSkillTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leader_skill', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50)->comment('隊長技能名稱');
            $table->string('description')->comment('隊長技能敘述');

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
        Schema::drop('leader_skill');
    }
}
