<?php

namespace App\Repositories;

use App\Models\Race;

Class RaceRepository
{
    /** @var Race */
    protected $race;

    public function __construct(Race $race){
        $this->race = $race;
    }

    public function getRaceById($id){
        return $race->find($id);
    }

    public function getRaceByName($name){
        return $race->where('name', '=', $name)->first();
    }
}