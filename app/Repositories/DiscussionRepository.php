<?php

namespace App\Repositories;

use App\Models\Discussion;

class DiscussionRepository
{
    protected $discussion;

    public function __construct(Discussion $discussion){
        $this->discussion = $discussion;
    }

    /**
     * 取得所有討論資料
     *
     * @return App\Models\Discussion
     */
    public function getDiscussion(){
        return $this->discussion->all();
    }

    /**
     * 回傳最新的5個討論
     * 
     * @return App\Models\Discussion的最新5筆資料
     */
    public function getLatestDiscussion(){
        return $this->discussion
                ->with('response_discuss')
                ->orderby('id', 'desc')
                // ->limit(5)    
                ->get(); 
    }

    /**
     * 新增討論內容和標題
     * 
     * 
     */
    public function addDiscussion(){
        
    }

    /**
     * 修改討論內容和標題
     * 
     * 
     */
    public function editDiscussion($id){

    }

    /**
     * 刪除討論串
     * 
     * 
     */
    public function delDiscussion($id){

    }
   
}