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

    public function getCardById($id){
        $card = $this->cardRepo->getCardById($id);

        return $card;
    }
}