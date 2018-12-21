<?php

namespace App\Services;

use App\Repositories\SeriesRepository;

Class SeriesService
{
    /** @var SeriesRepository */
    protected $seriesRepo;

    public function __construct(SeriesRepository $seriesRepo){
        $this->seriesRepo = $seriesRepo;
    }

    public function getAllSeries(){
        return $this->seriesRepo->getAllSeries();
    }

    public function getSeriesById($id){
        return $this->seriesRepo->getSeriesById($id);
    }

    public function getSeriesByName($name){
        return $this->seriesRepo->getSeriesByName($name);
    }
}