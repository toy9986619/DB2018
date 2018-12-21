<?php

namespace App\Repositories;

use App\Models\Series;

Class SeriesRepository
{
    /** @var Series */
    protected $series;

    public function __construct(Series $series){
        $this->series = $series;
    }

    public function getAllSeries(){
        return $this->series->all();
    }

    public function getSeriesById($id){
        return $this->series->find($id);
    }

    public function getSeriesByName($name){
        return $this->series->where('name', '=', $name)->first();
    }
}