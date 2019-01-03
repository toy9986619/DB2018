<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Services\CardService;

class CardController extends Controller
{
    /** @var CardService */
    protected $cardService;
    
    /**
     * 建構子
     */
    public function __construct(CardService $cardService){
        $this->cardService = $cardService;

    }

    public function gallery()
    {
        return view('gallery', ['title' => '卡片目錄']);
    }

    public function cardInfo()
    {
        return view('cardInfo', ['title' => '卡片資料']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $filter_data = $request->all();

        $cards = $this->cardService->getCardsList($filter_data);
        return response()->json(
                ['cards' => $cards], 200, $this->header, JSON_UNESCAPED_UNICODE);
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
        $this->cardService->insertCard($input_data);

        return response()->json(['status'=>'ok'], 200, $this->header);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return response()->json(['card' => $this->cardService->getCardById($id)], 
                200, $this->header, JSON_UNESCAPED_UNICODE);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return response()->json(['card' => $this->cardService->getCardFormDataById($id)],
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
        $card_data = $request->all();
        $this->cardService->updateCard($card_data);

        return response()->json(['status'=>'OK'], 200, $this->header);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $del = $this->cardService->deleteCard($id);

        return response()->json(['status' => 'OK'], 200, $this->header);
        // return response()->json(['del_list'=>$del], 200);
    }
}
