<?php

namespace App\Models;

use App\Models\BaseModel;

class ActiveSkill extends BaseModel
{
    protected $table = 'active_skill';

    protected $fillable = [
        'name', 'description', 'min_cd', 'max_cd'
    ];

}
