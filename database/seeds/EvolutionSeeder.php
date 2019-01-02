<?php

use Illuminate\Database\Seeder;

class EvolutionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = 'database/seeds/sql_data/evo.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('evolution table seeded!');
    }
}
