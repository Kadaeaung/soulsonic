<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','FrontendController@index')->name('index');
Route::get('/artist','FrontendController@artist')->name('artist');
Route::get('/album','FrontendController@album')->name('album');
Route::get('/song','FrontendController@song')->name('song');
Route::get('/category','FrontendController@category')->name('category');
Route::get('artistdetail/{id}','FrontendController@artistdetail')->name('artistdetail');
Route::get('categorydetail/{id}','FrontendController@categorydetail')->name('categorydetail');
Route::get('albumdetail/{id}','FrontendController@albumdetail')->name('albumdetail');


	//Backend

	Route::group([ 'prefix' => 'backside' , 'as' => 'backside.'], function(){


	Route::resource('/song','SongController');
	Route::resource('/album','AlbumController');

	Route::resource('/artist','ArtistController');
	Route::resource('/category','CategoryController');
	

		});
	Route::post('/albumartist','SongController@albumartist')->name('albumartist');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
