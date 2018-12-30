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
        // $data1 = App\Models\Evolution::create([
        //     'id' => 1,
        //     'parent_id' => null,
        //     'data_card_id' => 1
        // ]);

        // $data2 = App\Models\Evolution::create([
        //     'id' => 2,
        //     'parent_id' => 1,
        //     'data_card_id' => 2
        // ]);

        // $data3 = App\Models\Evolution::create([
        //     'id' => 3,
        //     'parent_id' => 2,
        //     'data_card_id' => 3
        // ]);

        // $data4 = App\Models\Evolution::create([
        //     'id' => 4,
        //     'parent_id' => 3,
        //     'data_card_id' => 4
        // ]);

        $data5 = App\Models\Evolution::create([
            'id' => 5,
            'parent_id' => null,
            'data_card_id' => 5
        ]);

        $data6 = App\Models\Evolution::create([
            'id' => 6,
            'parent_id' => 5,
            'data_card_id' => 6
        ]);

        $data7 = App\Models\Evolution::create([
            'id' => 7,
            'parent_id' => 6,
            'data_card_id' => 7
        ]);

        $data8 = App\Models\Evolution::create([
            'id' => 8,
            'parent_id' => 7,
            'data_card_id' => 8
        ]);
    }
}
