<?php

use Illuminate\Database\Seeder;

class ActiveSkillSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = 'database/seeds/sql_data/active_skill.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('active_skill table seeded!');
    }
}
