<?php

namespace App\Models;

use App\Models\BaseModel;

class Card extends BaseModel
{
    protected $fillable = [
        'id', 'name', 'attribute', 'race_id', 'series_id', 'rarity', 'cost', 'exp_curve',
        'max_exp', 'min_level', 'min_hp', 'min_atk', 'min_rec', 'max_level',
        'max_hp', 'max_atk', 'max_rec', 'active_skill_id', 'leader_skill_id'
    ];

    // protected $hidden = [
    //     'race_id', 'series_id', 'active_skill_id', 'leader_skill_id',
    // ];

    /**
     * 取得 種族 模型
     *
     * @return App\Models\Race
     */
    public function race(){
        return $this->hasOne('App\Models\Race', 'id', 'race_id');
    }

    /**
     * 取得 類型 模型
     *
     * @return App\Models\Series
     */
    public function series(){
        return $this->hasOne('App\Models\Series', 'id', 'series_id');
    }

    /**
     * 取得 主動技 模型
     *
     * @return App\Models\ActiveSkill
     */
    public function active_skill(){
        return $this->hasOne('App\Models\ActiveSkill', 'id', 'active_skill_id');
    }

    /**
     * 取得 隊長技 模型
     *
     * @return App\Models\LeaderSkill
     */
    public function leader_skill(){
        return $this->hasOne('App\Models\LeaderSkill', 'id', 'leader_skill_id');
    }

    /**
     * 取得 文章 模型
     * 
     * @return App\Models\Article
     */
    public function article(){
        return $this->hasMany('App\Models\Article', 'card_id', 'id');
    }
}
