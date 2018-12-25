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

    /**
     * 取得 所有類型
     *
     * @return void
     */
    public function getAllSeries(){
        return $this->seriesRepo->getAllSeries();
    }

    /**
     * 依據ID 取得 類型模型
     *
     * @param int $id
     * @return App\Models\Series
     */
    public function getSeriesById($id){
        return $this->seriesRepo->getSeriesById($id);
    }

    /**
     * 依據name 取得 類型模型
     *
     * @param string $name
     * @return App\Models\Series
     */
    public function getSeriesByName($name){
        return $this->seriesRepo->getSeriesByName($name);
    }
}