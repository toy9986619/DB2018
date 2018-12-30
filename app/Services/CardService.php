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
     * 依據id 取得編輯表單的卡片資量
     *
     * @param int $id
     * @return App\Models\Card
     */
    public function getCardFormDataById($id){
        $card = $this->cardRepo->getCardFormDataById($id);

        return $card;
    }

    /**
     * 依據篩選條件 取得篩選後卡片id 與 名稱
     *
     * @param array $filter_data
     * @return App\Models\Card
     */
    public function getCardsList($filter_data){
        $attribute = empty($filter_data['attribute']) ? "" : $filter_data['attribute'];

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

    /**
     * 依據輸入資料 更新卡片
     *
     * @param array $input_data
     * @return void
     */
    public function updateCard($input_data){
        $card_data = $input_data['card'];

        $id = $card_data['id'];
        unset($card_data['id']);
        $update_data = $card_data;

        $this->cardRepo->updateCard($id, $update_data);
    }

    /**
     * 依據id 刪除卡片
     *
     * @param int $id
     * @return void
     */
    public function deleteCard($id){
        $this->cardRepo->deleteCard($id);
    }
}