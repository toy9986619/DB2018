<?php

namespace App\Services;

use App\Repository\SeriesRepository;

Class SeriesService
{
    /** @var SeriesRepository */
    protected $seriesRepo;

    public function __contruct(SeriesRepository $seriesRepo){
        $this->seriesRepo = $seriesRepo;
    }

    public function getSeriesById($id){
        return $this->seriesRepo->getSeriesById($id);
    }

    public function getSeriesByName($name){
        return $this->seriesRepo->getSeriesByName($name);
    }
}