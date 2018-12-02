<?php

namespace App\Services;

use App\Repositories\DiscussionRepository;

class DiscussionService
{   
    /** @var DiscussionRepository */
    protected $articleRepo;

    public function __construct(DiscussionRepository $articleRepo){
        $this->articleRepo = $articleRepo;
    }


    public function getArticle(){
        $article = $this->rticleRepo->getArticle();

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