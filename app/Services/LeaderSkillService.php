<?php

namespace App\Services;

use App\Repositories\LeaderSkillRepository;

class LeaderSkillService
{
    /** @var LeaderSkillRepository */
    protected $leaderSkillRepo;

    public function __construct(LeaderSkillRepository $leaderSkillRepo){
        $this->leaderSkillRepo = $leaderSkillRepo;
    }

    public function getAllLeaderSkill(){
        return $this->leaderSkillRepo->getAllLeaderSkill();
    }
}