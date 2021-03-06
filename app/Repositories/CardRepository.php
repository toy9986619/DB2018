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
     * 取得 所有卡片資料
     *
     * @return App\Models\Card
     */
    public function getCards(){
        return $this->card->all();
    }

    /**
     * 取得 卡片的詳細資料 (含關聯實體)
     *
     * @param int $id
     * @return App\Models\Card
     */
    public function getCardById($id){
        return $this->card
                ->with('race', 'series', 'active_skill', 'leader_skill')
                // ->with(['article' => function($query){
                //     $query->with('user', 'reply.user');
                // }])
                ->find($id);
    }

    /**
     * 取得 編輯卡片的表單資料
     *
     * @param int $id
     * @return void
     */
    public function getCardFormDataById($id){
        return $this->card->find($id);
    }

    /**
     * 取得 卡片資料集的編號 與 名稱
     *
     * @return void
     */
    public function getCardsList($attribute, $race, $series, $paginate){
        $query = $this->card->select('id', 'name');
        
        if($attribute != ""){
            $query = $query->where('attribute', '=', $attribute);
        }

        if($race != ""){
            $query = $query->where('race_id', '=', $race);
        }

        if($series != ""){
            $query = $query->where('series_id', '=', $series);
        }
        
        return $query->paginate($paginate);
    }

    public function getCardDataCount(){
        return $this->card->all()->count();
    }

    /**
     * 新增 卡片
     *
     * @param array $card_data
     * @return void
     */
    public function insertCard($card_data){
        $card = $this->card->create($card_data);
    }

    /**
     * 更新 卡片
     *
     * @param int $id
     * @param array $card_data
     * @return void
     */
    public function updateCard($id, $card_data){
        $card = $this->card->find($id)->update($card_data);
    }

    /**
     * 刪除 卡片
     *
     * @param int $id
     * @return void
     */
    public function deleteCard($id){
        $this->card->destroy($id);
    }
}