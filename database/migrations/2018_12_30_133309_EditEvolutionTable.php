<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class EditEvolutionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement('ALTER TABLE evolution MODIFY parent_id INT UNSIGNED NULL');
        DB::statement('ALTER TABLE evolution MODIFY data_card_id INT UNSIGNED NOT NULL');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement('ALTER TABLE evolution MODIFY parent_id INT NOT NULL');
        DB::statement('ALTER TABLE evolution MODIFY data_card_id INT');
    }
}
