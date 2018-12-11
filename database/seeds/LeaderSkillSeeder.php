<?php

use Illuminate\Database\Seeder;

class LeaderSkillSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = 'database/seeds/sql_data/leader_skill.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('leader_skill table seeded!');
    }
}
