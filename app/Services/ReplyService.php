<?php

namespace App\Services;

use App\Repositories\ReplyRepository;

class ReplyService
{   
    /** @var ReplyRepository */
    protected $replyRepo;

    public function __construct(ReplyRepository $replyRepo){
        $this->replyRepo = $replyRepo;
    }


    public function getReply(){
        $reply = $this->replyRepo->getReply();

        return $reply;
    }


    public function addReply($data){
        $user_name = $data['user_name'];
        $user_id = $this->userService->getIdByName($user_name);
        $content = $data['content'];
        $article_id = $data['article_id'];

        $this->replyRepo->addReply($user_id, $content, $article_id);
    }

    public function editReply($id){
        $reply = $this->replyRepo->editReply($id);

        return $reply;
    }

    public function updateReply($id, $data){
        $content = $data['content'];

        $this->replyRepo->updateReply($id, $content);
    }

    public function delReply($id){
        $this->replyRepo->delReply($id);
    }
}