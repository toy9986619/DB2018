<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(AdminAccountSeeder::class);
        $this->call(TestingArticleSeeder::class);

        $this->call(ActiveSkillSeeder::class);
        $this->call(LeaderSkillSeeder::class);
        $this->call(CardSeeder::class);
    }
}
