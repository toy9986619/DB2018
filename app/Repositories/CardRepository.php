<?php

namespace App\Repositories;

use App\Models\Card;

class CardRepository
{
    protected $card;

    public function __construct(Card $card){
        $this->card = $card;
    }

    /**
     * 取得所有卡片資料
     *
     * @return App\Models\Card
     */
    public function getCards(){
        return $this->card->all();
    }

    public function getCardById($id){
        return $this->card
                ->with('race', 'series', 'active_skill', 'leader_skill', 'article')
                ->where('id', '=', $id)
                ->get();
    }
}