<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Services\UserService;

class UserController extends Controller
{
    /** @var UserService */
    protected $userService;

    /**
     * 建構子
     */
    public function __construct(UserService $userService){
        $this->userService = $userService;
    }

    /*
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['users' => $this->userService->getAllUser()],
                200, $this->header, JSON_UNESCAPED_UNICODE);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input_data = $request->all();
        $this->userService->insertUser($input_data);

        return response()->json(['status'=> 'ok'], 200, $this->header);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $request->all();
        $user_id = $this->userService->getIdByName($data['user_name']);

        return response()->json(['user_id' => $user_id]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return response()->json(['user' => $this->userService->getUserById($id)],
            200, $this->header, JSON_UNESCAPED_UNICODE);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input_data = $request->all();
        $this->userService->updateUser($id, $input_data);

        return response()->json(['status' => 'ok'], 200, $this->header);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->userService->deleteUser($id);

        return response()->json(['status' => 'ok'], 200, $this->header);
    }
}
