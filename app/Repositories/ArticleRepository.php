<?php
/**
 * ArticleRepository中的 Function只作用在http://localhost:xxxx/article
 * 
 */
namespace App\Repositories;

use App\Models\Article;

class ArticleRepository
{
    /** @var Article */
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
                ->with('user', 'reply.user')
                ->orderby('id', 'desc')
                // ->limit(5)    
                ->get(); 
    }

    /**
     * 新增討論內容和標題
     * 
     * 
     */
    public function addArticle($user_id, $title, $content, $card_id){
        $this->article = new Article;
        //'user_id', 'title', 'content', 'card_id'
        $this->article->user_id = $user_id;
        $this->article->title = $title;
        $this->article->content = $content;
        $this->article->card_id = $card_id;
        $this->article->save();
    }


    /**
     * 尋找特定文章
     * 
     */
    public function editArticle($id){
        return $this->article
                ->where('id', '=', $id)
                ->get();
    }

    /**
     * 修改討論內容和標題
     * 
     * 
     */
    public function updateArticle($id, $title, $content){
        $this->article = App\Article::where('id', '=', $id);
        $this->article->title = $title;
        $this->article->content = $content;
        $this->article->save();
    }

    /**
     * 刪除討論串
     * 
     * 
     */
    public function delArticle($id){
        $this->article = App\Article::where('id', '=', $id);
        $this->article->delete();
    }
   
}