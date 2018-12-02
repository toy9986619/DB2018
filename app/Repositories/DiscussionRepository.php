<?php

namespace App\Repositories;

use App\Models\Discussion;

class DiscussionRepository
{
    protected $article;

    public function __construct(Discussion $article){
        $this->article = $article;
    }

    /**
     * 取得所有討論資料
     *
     * @return App\Models\Discussion
     */
    public function getArticle(){
        return $this->article->all();
    }

    /**
     * 回傳最新的5個討論
     * 
     * @return App\Models\Discussion的最新5筆資料
     */
    public function getLatestArticle(){
        return $this->article
                ->with('reply_id')
                ->orderby('id', 'desc')
                // ->limit(5)    
                ->get(); 
    }

    /**
     * 新增討論內容和標題
     * 
     * 
     */
    public function addArticle(){
        
    }

    /**
     * 修改討論內容和標題
     * 
     * 
     */
    public function editArticle($id){

    }

    /**
     * 刪除討論串
     * 
     * 
     */
    public function delArticle($id){

    }
   
}