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
Route::get('/gallery', 'CardController@gallery');
Route::get('/gallery/{id}', 'CardController@cardInfo');
Route::get('/cms', 'CMSController@index');
Route::get('/activeskill', 'ActiveSkillController@index');
Route::get('/leaderskill', 'LeaderSkillController@index');

Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/article', 'ArticleController@show');
