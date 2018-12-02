<?php

namespace App\Repositories;

use App\Models\Article;

class ArticleRepository
{
    protected $article;

    public function __construct(Article $article){
        $this->article = $article;
    }

    /**
     * 取得所有討論資料
     *
     * @return App\Models\Article
     */
    public function getArticle(){
        return $this->article->all();
    }

    /**
     * 回傳最新的5個討論
     * 
     * @return App\Models\Article的最新5筆資料
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