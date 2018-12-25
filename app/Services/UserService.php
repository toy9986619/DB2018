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

    public function getAllUser(){
        return $this->userRepo->getAllUser();
    }

    public function getIdByName($name){
        $user_id = $this->userRepo->getIdByName($name)->toArray();

        return $user_id['id'];
    }

}