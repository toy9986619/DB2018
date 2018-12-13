<?php

namespace App\Services;

use App\Repositories\ArticleRepository;

class ArticleService
{   
    /** @var ArticleRepository */
    protected $articleRepo;

    public function __construct(ArticleRepository $articleRepo){
        $this->articleRepo = $articleRepo;
    }


    public function getArticle(){
        $article = $this->articleRepo->getArticle();

        return $article;
    }

    public function getLatestArticle(){
        $article = $this->articleRepo->getLatestArticle();

        return $article;
    }

    public function addArticle($request){
        $this->articleRepo->addArticle($request->user_id, $request->title, $request->content, $request->card_id);
    }

    public function editArticle($id){
        $article = $this->articleRepo->editArticle($id);

        return $article;
    }

    public function updateArticle($id, $request){
        $this->articleRepo->updateArticle($id, $request->title, $request->content);
    }

    public function delArticle($id){
        $this->articleRepo->delArticle($id);
    }
}