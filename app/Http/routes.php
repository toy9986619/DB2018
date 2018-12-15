<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('authtest');
});

Route::get('card/{id}', 'CardController@show');

Route::auth();

Route::get('/home', 'HomeController@index');

Route::group(['prefix' => '/article'], function () {
    Route::get('/', 'ArticleController@show');

    Route::post('/', 'ArticleController@store');

    Route::get('/{id}', 'ArticleController@edit');

    Route::put('/{id}', 'ArticleController@update');

    Route::delete('/{id}', 'ArticleController@destroy');
});

Route::group(['prefix' => '/reply'], function() {
    Route::get('/', 'ReplyController@show');

    Route::post('/', 'ReplyController@store');

    Route::get('/{id}', 'ReplyController@edit');

    Route::put('/{id}', 'ReplyController@update');

    Route::delete('/{id}', 'ReplyController@destroy');
});

// Route::get('/user_id', 'UserController@show');



