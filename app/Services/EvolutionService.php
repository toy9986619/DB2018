<?php

namespace App\Services;

use App\Repositories\EvolutionRepository;

class EvolutionService
{
    /** @var EvolutionRepository */
    protected $evolutionRepo;

    public function __construct(EvolutionRepository $evolutionRepo)
    {
        $this->evolutionRepo = $evolutionRepo;
    }

    public function getEvolutionByCardId($id)
    {
        // return $this->evolutionRepo->getEvolutionByCardId($id);
        $topParent = $this->getTopParentByCardId($id);
        return $this->evolutionRepo->getEvolveByCardId($topParent['data_card_id']);
    }

    public function getTopParentByCardId($id)
    {
        $parent = $this->evolutionRepo->getParentByCardId($id);
        if (!empty($parent)) {
            $parent = $parent->toArray();
        }
        $node = $parent;

        while (!is_null($node['parent_id'])) {
            $node = $node['evolve_parent'];
        }

        return $node;
    }

    public function getParent($id)
    {
        $parent = $this->evolutionRepo->getParent($id);

        return $parent;
    }

    public function getChild($id)
    {
        $child = $this->evolutionRepo->getChild($id);

        return $child;
    }

    public function insert($parent, $self, $child)
    {
        $this->evolutionRepo->insert($parent, $self, $child);
    }

    public function update($parent, $self, $child)
    {
        $this->evolutionRepo->update($parent, $self, $child);
    }

    public function del($id)
    {
        $this->evolutionRepo->del($id);
    }
}