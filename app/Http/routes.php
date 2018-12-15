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

    Route::get('/add', 'ArticleController@store');

    Route::get('/{id}', 'ArticleController@edit');

    Route::get('/update/{id}', 'ArticleController@update');

    Route::get('/del/{id}', 'ArticleController@destroy');
});

Route::group(['prefix' => '/reply'], function() {
    Route::get('/', 'ReplyController@show');

    Route::post('/add', 'ReplyController@store');

    Route::get('/{id}', 'ReplyController@edit');

    Route::post('/update{id}', 'ReplyController@update');

    Route::delete('/del/{id}', 'ReplyController@destroy');
});

Route::get('/user_id', 'UserController@show');

// Route::get('/test', function () {
//     return view('test');
// });

// Route::post('/test', 'ArticleController@store');


