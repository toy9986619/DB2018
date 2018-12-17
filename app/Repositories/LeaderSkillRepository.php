<?php

namespace App\Repositories;

use App\Models\LeaderSkill;

class LeaderSkillRepository
{
    /** @var LeaderSkill */
    protected $leader_skill;

    public function __construct(LeaderSkill $leader_skill){
        $this->leader_skill = $leader_skill;
    }

    public function getAllLeaderSkill(){
        return $this->leader_skill->all();
    }
}