<?php

namespace App\Repositories;

use App\Models\Evolution;

class EvolutionRepository
{
    /** @var Evolution */
    protected $evolution;

    public function __construct(Evolution $evolution){
        $this->evolution = $evolution;
    }

    public function getEvolutionByCardId($id){
        return $this->evolution
                    ->with('evolve', 'evolveParent')
                    ->where('data_card_id', '=', $id)
                    ->first();
    }
}