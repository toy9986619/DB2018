<?php
/**
 * 
 * 
 */
namespace App\Repositories;

use App\Models\User;

class UserRepository
{
    /** @var User */
    protected $user;

    public function __construct(User $user){
        $this->user = $user;
    }

    public function getAllUser(){
        return $this->user->all();
    }

    /**
     * 依靠user_name取得user_id
     * 
     */
    public function getIdByName($name){
        $userinfo = $this->user
                ->where('name', '=', $name)
                ->first();
                
        return $userinfo;
    }
   
}