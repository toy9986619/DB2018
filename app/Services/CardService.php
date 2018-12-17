<?php

namespace App\Services;

use App\Repositories\CardRepository;

class CardService
{   
    /** @var CardRepository */
    protected $cardRepo;

    public function __construct(CardRepository $cardRepo){
        $this->cardRepo = $cardRepo;
    }

    /**
     * 依據id 取得卡片資料
     *
     * @param int $id
     * @return App\Models\Card
     */
    public function getCardById($id){
        $card = $this->cardRepo->getCardById($id);

        return $card;
    }

    /**
     * 依據篩選條件 取得篩選後卡片id 與 名稱
     *
     * @param array $filter_data
     * @return App\Models\Card
     */
    public function getCardsList($filter_data){
        $attribute = $filter_data['attribute'];

        $cards = $this->cardRepo->getCardsList($attribute);

        return $cards;
    }

    public function getCardDataCount(){
        $count = $this->cardRepo->getCardDataCount();

        return $count;
    }

    /**
     * 依據輸入資料 新增卡片
     *
     * @param array $input_data
     * @return void
     */
    public function insertCard($input_data){
        $card_data = $input_data['card'];

        $this->cardRepo->insertCard($card_data);
    }

    public function updateCard($input_data){
        $card_data = $input_data['card'];

        $id = $card_data['id'];
        unset($card_data['id']);
        $update_data = $card_data;

        $this->cardRepo->updateCard($id, $update_data);
    }
}