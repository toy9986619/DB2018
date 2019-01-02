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

    public function getParentByCardId($id){
        return $this->evolution
                    ->with('evolveParent')
                    ->where('data_card_id', '=', $id)
                    ->first();
    }

    public function getEvolveByCardId($id){
        return $this->evolution
                    ->with('evolve')
                    ->where('data_card_id', '=', $id)
                    ->first();
    }

    public function getParent($id){
        $parent_id = $this->evolution
                    ->where('data_card_id', '=', $id)
                    ->value('parent_id');
        if($parent_id){            
            return $this->evolution
                        ->where('id', '=', $parent_id)
                        ->value('data_card_id');
        }
        else return null;
    }

    public function getChild($id){
        $current_id = $this->evolution
                ->where('data_card_id', '=', $id)
                ->value('id');
        return $this->evolution
                    ->where('parent_id', '=', $current_id)
                    ->value('data_card_id');
    }

    public function insert($parent, $self, $child){
        $evolution = new Evolution;
        if($parent){
            $parent_id = $this->evolution
                        ->where('data_card_id', '=', $parent)
                        ->value('id');
        }
        else $parent = null;
        $evolution->data_card_id->save($self);
        $evolution->parent_id->save($parent_id);


        if($child){
            $evolution = $this->evolution
                            ->where('data_card_id', '=', $child)
                            ->get();
            $parent_id = $this->evolution
                            ->where('data_card_id', '=', $self)
                            ->value('id');
            $evolution->parent_id->save($parent_id);
        }  
    }

    public function update($parent, $self, $child){
        if($parent){
            $evolution = $this->evolution->where('data_card_id', '=', $self)->get();
            $parent_id = $this->evolution
                                        ->where('data_card_id', '=', $parent)
                                        ->value('id');
            $evolution['parent_id']->save($parent_id);
        }
        else {
            $evolution = $this->evolution->where('data_card_id', '=', $self)->get();

            $evolution['parent_id']->save(null);
        }
        

        if($child){
            $evolution = $this->evolution
                            ->where('data_card_id', '=', $child)
                            ->get();
            $parent_id = $this->evolution
                            ->where('data_card_id', '=', $self)
                            ->value('id');
            $evolution['parent_id']->save($parent_id);
        }
    }

    public function del($id){

        $evolve_id = $this->evolution
                        ->where('data_card_id', '=', $id)
                        ->value('id');
        
        $evolution = $this->evolution
                        ->where('parent_id', '=', $evolve_id)
                        ->get();
        $evolution->parent_id = null;
        $evolution->save();
        
        $this->evolution->find($evolve_id)->delete();  
    }
}