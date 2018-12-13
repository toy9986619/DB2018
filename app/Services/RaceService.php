<?php

namespace App\Services;

use App\Repository\RaceRepository;

Class RaceService
{
    /** @var RaceRepository */
    protected $raceRepo;

    public function __contruct(RaceRepository $raceRepo){
        $this->raceRepo = $raceRepo;
    }

    public function getRaceById($id){
        return $this->raceRepo->getRaceById($id);
    }

    public function getRaceByName($name){
        return $this->raceRepo->getRaceByName($name);
    }
}