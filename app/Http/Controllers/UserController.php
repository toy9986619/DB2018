<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Services\UserService;

class UserController extends Controller
{
    protected $userService;

    /**
     * 建構子
     */
    public function __construct(UserService $userService){
        $this->userService = $userService;
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $data = $request->all();
        $user_id = $this->userService->getIdByName($data['user_name']);

        return response()->json(['user_id' => $user_id]);
    }

}