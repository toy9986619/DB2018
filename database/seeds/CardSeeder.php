<?php

use Illuminate\Database\Seeder;

class CardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 新增 種族與類型 資料
        $path = 'database/seeds/sql_data/race_series_data.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('races and series table seeded!');

        // 新增 卡片 資料
        $path = 'database/seeds/sql_data/card_data.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('card table seeded!');
    }
}
