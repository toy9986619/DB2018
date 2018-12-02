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

    public function addArticle(){

    }

    public function editArticle($id){

    }

    public function delArticle($id){
        
    }
}