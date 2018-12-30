<?php

namespace App\Services;

use App\Repositories\RaceRepository;

Class RaceService
{
    /** @var RaceRepository */
    protected $raceRepo;

    public function __construct(RaceRepository $raceRepo){
        $this->raceRepo = $raceRepo;
    }

    public function getAllRace(){
        return $this->raceRepo->getAllRace();
    }

    public function getRaceById($id){
        return $this->raceRepo->getRaceById($id);
    }

    public function getRaceByName($name){
        return $this->raceRepo->getRaceByName($name);
    }
}