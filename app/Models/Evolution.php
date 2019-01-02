<?php

namespace App\Models;

use App\Models\BaseModel;

class Evolution extends BaseModel
{
    protected $table = 'evolution';

    protected $primaryKey = 'id';

    protected $fillable = [
        'parent_id', 'data_card_id'
    ];

    public function parent(){
        return $this->belongsTo('App\Models\Evolution', 'parent_id', 'id');
    }

    public function children(){
        return $this->hasMany('App\Models\Evolution', 'parent_id', 'id');
    }

    public function evolve(){
        return $this->children()->with('evolve');
    }

    public function evolveParent(){
        return $this->parent()->with('evolveParent');
    }
}
