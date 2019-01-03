<?php

namespace App\Services;

use App\Repositories\CardRepository;
use App\Services\EvolutionService;

class CardService
{   
    /** @var CardRepository */
    protected $cardRepo;

    /** @var EvolutionService */
    protected $evolutionService;

    public function __construct(CardRepository $cardRepo, EvolutionService $evolutionService){
        $this->cardRepo = $cardRepo;
        $this->evolutionService = $evolutionService;
    }

    /**
     * 依據id 取得卡片資料
     *
     * @param int $id
     * @return App\Models\Card
     */
    public function getCardById($id){
        $card = $this->cardRepo->getCardById($id);
        if(!empty($card)){
            $card['evolution'] = $this->evolutionService->getEvolutionByCardId($id);
        }

        return $card;
    }

    /**
     * 依據id 取得編輯表單的卡片資料
     *
     * @param int $id
     * @return App\Models\Card
     */
    public function getCardFormDataById($id){
        $card = $this->cardRepo->getCardFormDataById($id);
        // $card['parent_id'] = $this->evolutionService->getParent($id);
        // $card['child_id'] = $this->evolutionService->getChild($id); 

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
        $race = empty($filter_data['race']) ? "" : $filter_data['race'];
        $series = empty($filter_data['series']) ? "" : $filter_data['series'];
        $pageinate = empty($filter_data['pageinate']) ? 50 : $filter_data['pageinate'];

        $cards = $this->cardRepo->getCardsList($attribute, $race, $series, $pageinate);

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

        // $this->evolutionService->insert($card_data['parent_id'], $card_data['id'], $card_data['child_id']);

        // unset($card_date['parent_id']);
        // unset($card_data['child_id']);

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

        // $this->evolutionService->update($card_data['parent_id'], $id, $card_data['child_id']);

        unset($card_data['id']);
        // unset($card_date['parent_id']);
        // unset($card_data['child_id']);
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
        // $this->evolutionService->del($id);
    }

}