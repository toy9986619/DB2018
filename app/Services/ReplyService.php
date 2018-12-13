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


    public function addReply($request){
        $this->replyRepo->addReply($request->user_id, $request->content, $request->article_id);
    }

    public function editReply($id){
        $reply = $this->replyRepo->editReply($id);

        return $reply;
    }

    public function updateReply($id, $request){
        $this->replyRepo->updateReply($id, $request->content);
    }

    public function delReply($id){
        $this->replyRepo->delReply($id);
    }
}