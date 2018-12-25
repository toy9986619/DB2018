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

Route::get('/gallery', 'CardController@gallery');
Route::get('/gallery/{id}', 'CardController@cardInfo');
Route::resource('card', 'CardController', ['only' => [
    'index', 'show', 'edit', 'update', 'store', 'destroy'
]]);

Route::resource('user', 'UserController', ['only' => [
    'index'
]]);

Route::get('/cms', 'CMSController@index');

Route::resource('activeskill', 'ActiveSkillController', ['only' => [
    'index'
]]);
Route::resource('leaderskill', 'LeaderSkillController', ['only' => [
    'index'
]]);
Route::resource('series', 'SeriesController', ['only' => [
    'index'
]]);
Route::resource('race', 'RaceController', ['only' => [
    'index'
]]);

Route::auth();

Route::get('/home', 'HomeController@index');

Route::group(['prefix' => '/article'], function () {

    Route::get('/{id}', 'ArticleController@show');

    Route::get('/', 'ArticleController@index');

    Route::post('/', 'ArticleController@store');

    Route::get('/edit/{id}', 'ArticleController@edit');

    Route::put('/update/{id}', 'ArticleController@update');

    Route::delete('/del/{id}', 'ArticleController@destroy');

    // Route::get('/latest/{id}', 'ArticleController@latest');
});

Route::group(['prefix' => '/reply'], function() {
    Route::get('/{id}', 'ReplyController@show');

    Route::get('/', 'ReplyController@index');

    Route::post('/', 'ReplyController@store');

    Route::get('/edit/{id}', 'ReplyController@edit');

    Route::put('/update/{id}', 'ReplyController@update');

    Route::delete('/del/{id}', 'ReplyController@destroy');

    Route::delete('/delAll/{id}', 'ReplyController@destroyByArticleId');
});

// Route::get('/user', 'UserController@show');



