<?php

use Illuminate\Database\Seeder;

class TestingCardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $activeSkill = App\Models\ActiveSkill::create([
            'name' => '符石解放 ‧ 水',
            'description' => '直接引爆木符石造成敵全體水屬性傷害',
            'min_cd' => '5',
            'max_cd' => '14'
        ]);
        
        $leaderSkill = App\Models\leaderSkill::create([
            'name' => '海之力',
            'description' => '水屬性攻擊力 1.5 倍'
        ]);

        $race = App\Models\Race::create([
            'name' => '人類'
        ]);

        $series = App\Models\Series::create([
            'name' => '主角'
        ]);

        $card = App\Models\Card::create([
            'name' => '莫莉',
            'attribute' => '水',
            'rarity' => 2,
            'cost' => 2,
            'exp_curve' => '50萬',
            'max_exp' => 833,
            'min_level' => 1,
            'min_hp' => 86,
            'min_atk' => 47,
            'min_rec' => 15,
            'max_level' => 5,
            'max_hp' => 129,
            'max_atk' => 71,
            'max_rec' => 24,
        ]);

        DB::transaction(function () use ($activeSkill, $leaderSkill, $race, $series) {
            $activeSkill->save();
            $leaderSkill->save();
            $race->save();
            $series->save();
        });

        DB::transaction(function () use ($card) {
            $card->active_skill_id = App\Models\ActiveSkill::where('name', '=', '符石解放 ‧ 水')->first()->id;
            $card->leader_skill_id = App\Models\LeaderSkill::where('name', '=', '海之力')->first()->id;
            $card->race_id = App\Models\Race::where('name', '=', '人類')->first()->id;
            $card->series_id = App\Models\Series::where('name', '=', '主角')->first()->id;
            
            $card->save();
        });
    }
}
