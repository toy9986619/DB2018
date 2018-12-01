<?php

namespace App\Services;

use App\Repositories\DiscussionRepository;

class DiscussionService
{   
    /** @var DiscussionRepository */
    protected $discussRepo;

    public function __construct(DiscussionRepository $discussRepo){
        $this->discussRepo = $discussRepo;
    }


    public function getDiscussion(){
        $discussion = $this->discussRepo->getDiscussion();

        return $discussion;
    }

    public function getLatestDiscussion(){
        $discussion = $this->discussRepo->getLatestDiscussion();

        return $discussion;
    }
}