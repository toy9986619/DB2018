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

Route::get('/card/{id}', 'CardController@show');
Route::get('/card', 'CardController@index');
Route::get('/card/{id}/edit', 'CardController@edit');
Route::put('/card/{id}', 'CardController@update');
Route::post('/card', 'CardController@store');
Route::get('/gallery', 'CardController@gallery');
Route::get('/gallery/{id}', 'CardController@cardInfo');
Route::get('/cms', 'CMSController@index');
Route::get('/activeskill', 'ActiveSkillController@index');
Route::get('/leaderskill', 'LeaderSkillController@index');
Route::get('/series', 'SeriesController@index');
Route::get('/race', 'RaceController@index');

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



