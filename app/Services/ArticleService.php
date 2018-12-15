<?php

namespace App\Services;

use App\Repositories\ArticleRepository;
use App\Services\UserService;

class ArticleService
{   
    /** @var ArticleRepository */
    protected $articleRepo;

    public function __construct(ArticleRepository $articleRepo, UserService $userService){
        $this->articleRepo = $articleRepo;
        $this->userService = $userService;
    }


    public function getArticle(){
        $article = $this->articleRepo->getArticle();

        return $article;
    }

    public function getLatestArticle(){
        $article = $this->articleRepo->getLatestArticle();

        return $article;
    }

    public function addArticle($data){
        $user_name = $data['user_name'];
        $user_id = $this->userService->getIdByName($user_name);
        $title = $data['title'];
        $content = $data['content'];
        $card_id = $data['card_id'];

        $this->articleRepo->addArticle($user_id, $title, $content, $card_id);
    }

    public function editArticle($id){
        $article = $this->articleRepo->editArticle($id);

        return $article;
    }

    public function updateArticle($id, $data){
        $title = $data['title'];
        $content = $data['content'];


        $this->articleRepo->updateArticle($id, $title, $content);
    }

    public function delArticle($id){
        $this->articleRepo->delArticle($id);
    }
}