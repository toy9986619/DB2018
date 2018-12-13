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


    public function getIdByName($name){
        $user_name = $this->userRepo->getIdByName($name);

        return $user_name;
    }

}