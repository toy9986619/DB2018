<?php

namespace App\Services;

use App\Repositories\UserRepository;

class UserService
{   
    /** @var UserRepository */
    protected $userRepo;

    public function __construct(UserRepository $userRepo){
        $this->userRepo = $userRepo;
    }

    /**
     * 取得 所有使用者
     *
     * @return void
     */
    public function getAllUser(){
        return $this->userRepo->getAllUser();
    }

    /**
     * 依據name 取得 使用者的ID
     *
     * @param string $name
     * @return int
     */
    public function getIdByName($name){
        $user_id = $this->userRepo->getIdByName($name)->toArray();

        return $user_id['id'];
    }

    public function getUserById($id){
        return $this->userRepo->getUserById($id);
    }
}