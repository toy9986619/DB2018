<?php

namespace App\Models;

use App\Models\BaseModel;

class LeaderSkill extends BaseModel
{
    protected $table = 'leader_skill';

    protected $fillable = [
        'name', 'description'
    ];
}
