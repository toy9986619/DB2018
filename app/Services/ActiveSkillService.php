<?php

namespace App\Services;

use App\Repositories\ActiveSkillRepository;

class ActiveSkillService
{
    /** @var ActiveSkillRepository */
    protected $activeSkillRepo;

    public function __construct(ActiveSkillRepository $activeSkillRepo){
        $this->activeSkillRepo = $activeSkillRepo;
    }

    public function getAllActiveSkill(){
        return $this->activeSkillRepo->getAllActiveSkill();
    }
}