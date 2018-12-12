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

    public function getCardsId($filter_data){
        $attribute = $filter_data['attribute'];

        $cards = $this->cardRepo->getCardsId($attribute);

        return $cards;
    }

    public function getCardDataCount(){
        $count = $this->cardRepo->getCardDataCount();

        return $count;
    }
}