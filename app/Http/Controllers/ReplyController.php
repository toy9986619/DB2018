<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Services\ReplyService;


class ReplyController extends Controller
{
    protected $replyService;

    /**
     * 建構子
     */
    public function __construct(ReplyService $replyService){
        $this->replyService = $replyService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reply = $this->replyService->getReply();
        return response()->json(['reply' => $reply],
            200, $this->header);
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
        $data = $request->all();
        $this->replyService->addReply($data['reply']);
        
        $reply = $this->replyService->getLatestReply($data['reply']['article_id']);
        return response()->json(['reply' => $reply],
            200, $this->header);
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $reply = $this->replyService->getReply();
        return response()->json(['reply' => $reply], 200, $this->header);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $reply = $this->replyService->editReply($id);
        return response()->json(['reply' => $reply], 200);
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
        $data = $request->all();
        $this->replyService->updateReply($id, $data['reply']);
        return response()->json(['status' => 'OK'], 200, $this->header);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->replyService->delReply($id);
        return response()->json(['status' => 'OK'], 200, $this->header);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroyByArticleId($id)
    {
        $this->replyService->delAllReply($id);
        return response()->json(['status' => 'OK'], 200, $this->header);
    }

}
