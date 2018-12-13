<?php

namespace App\Repositories;

use App\Models\Card;

class CardRepository
{
    /** @var Card */
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

    /**
     * 取得卡片的詳細資料
     *
     * @param int $id
     * @return App\Models\Card
     */
    public function getCardById($id){
        return $this->card
                ->with('race', 'series', 'active_skill', 'leader_skill', 'article')
                ->with(['article' => function($query){
                    $query->with('user', 'reply.user');
                }])
                ->find($id);
    }

    /**
     * 取得 卡片資料集的編號
     *
     * @return void
     */
    public function getCardsId($attribute){
        $query = $this->card->select('id');
        
        if($attribute != ""){
            $query = $query->where('attribute', '=', $attribute);
        }
        
        return $query->take(100)->get();
    }

    public function getCardDataCount(){
        return $this->card->all()->count();
    }
}