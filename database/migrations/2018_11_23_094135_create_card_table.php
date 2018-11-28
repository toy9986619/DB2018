<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCardTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cards', function (Blueprint $table) {
            $table->increments('id')->comment('卡片編號');;
            $table->string('name', 50)->comment('卡片名稱');
            $table->string('attribute', 20)->comment('屬性');
            $table->integer('race_id')->comment('種族');
            $table->integer('series_id')->comment('類型');
            $table->integer('rarity')->comment('稀有度');
            $table->integer('cost')->comment('空間');
            $table->string('exp_curve', 10)->comment('經驗曲線');
            $table->integer('max_exp')->comment('滿級經驗');
            $table->integer('min_level')->comment('最小等級');
            $table->integer('min_hp')->comment('最小生命');
            $table->integer('min_atk')->comment('最小攻擊力');
            $table->integer('min_rec')->comment('最小回復力');
            $table->integer('max_level')->comment('最大等級');
            $table->integer('max_hp')->comment('最大生命');
            $table->integer('max_atk')->comment('最大攻擊力');
            $table->integer('max_rec')->comment('最大回復力');
            $table->integer('active_skill_id')->unsigned()->comment('主動技');
            $table->integer('leader_skill_id')->unsigned()->comment('隊長技');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('cards');
    }
}
