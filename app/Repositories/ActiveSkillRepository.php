<?php 

namespace App\Repositories;

use App\Models\ActiveSkill;

class ActiveSkillRepository 
{
    /** @var ActiveSkill */
    protected $active_skill;

    public function __construct(ActiveSkill $active_skill){
        $this->active_skill = $active_skill;
    }

    public function getAllActiveSkill(){
        return $this->active_skill->all();
    }
}
