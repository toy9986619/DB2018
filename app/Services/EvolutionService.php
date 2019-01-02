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
        // return $this->evolutionRepo->getEvolutionByCardId($id);
        $topParent = $this->getTopParentByCardId($id);
        return $this->evolutionRepo->getEvolveByCardId($topParent['data_card_id']);
    }

    public function getTopParentByCardId($id){
        $parent = $this->evolutionRepo->getParentByCardId($id)->toArray();
        $node = $parent;

        while(!is_null($node['parent_id'])){
            $node = $node['evolve_parent'];
        }

        return $node;
    }
}
