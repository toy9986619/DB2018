<?php

namespace App\Models;

use App\Models\BaseModel;

class Race extends BaseModel
{
    protected $table = 'races';

    protected $fillable = ['name'];

    public function card(){
        return $this->belongsTo('App\Models\Card', 'id', 'race');
    } 
}
