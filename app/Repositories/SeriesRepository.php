<?php

namespace App\Repositories;

use App\Models\Series;

Class SeriesRepository
{
    /** @var Series */
    protected $series;

    public function __contruct(Series $series){
        $this->series = $series;
    }

    public function getSeriesById($id){
        return $this->series->find($id);
    }

    public function getSeriesByName($name){
        return $this->series->where('name', '=', $name)->first();
    }
}