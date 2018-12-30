<?php

namespace App\Models;

use App\Models\BaseModel;

class Series extends BaseModel
{
    protected $table = 'series';

    protected $fillable = ['name'];
}
