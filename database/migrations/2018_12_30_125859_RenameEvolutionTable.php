<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameEvolutionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('evolution', function (Blueprint $table) {
            $table->renameColumn('base_id', 'parent_id');
            $table->renameColumn('target_id', 'data_card_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('evolution', function (Blueprint $table) {
            $table->renameColumn('parent_id', 'base_id');
            $table->renameColumn('data_card_id', 'target_id');
        });
    }
}
