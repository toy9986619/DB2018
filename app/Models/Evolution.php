<?php

namespace App\Models;

use App\Models\BaseModel;

class Evolution extends BaseModel
{
    protected $table = 'evolution';

    protected $fillable = [
        'base_id', 'target_id'
    ];
}
