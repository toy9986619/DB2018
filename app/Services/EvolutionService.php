<?php

namespace App\Services;

use App\Repositories\EvolutionRepository;

class EvolutionService
{
    /** @var EvolutionRepository */
    protected $evolutionRepo;

    public function __construct(EvolutionRepository $evolutionRepo){
        $this->evolutionRepo = $evolutionRepo;
    }

    public function getEvolutionByCardId($id){
        return $this->evolutionRepo->getEvolutionByCardId($id);
    }
}
