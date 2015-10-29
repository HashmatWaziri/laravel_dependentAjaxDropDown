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

Route::get('/',function () {
    return view('welcome');
});



Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

/**
 * Handle facebook authentication
 */
Route::get('auth/fbauth', 'Auth\AuthController@redirectToProvider');
Route::get('callback', 'Auth\AuthController@handleProviderCallback');


/**
 *
 *
 */
Route::resource('listeners', 'ListenerController');
Route::resource('albums', 'AlbumController');
Route::resource('songs', 'SongController');
Route::resource('artists', 'ArtistController');


/**
 * used for ajax call to retrieve the songs based on album id
 *
 *
 */

Route::get('/ajax-call', function(){


    $id = Input::get('album_id');
    $songs = \App\Song::where('album_id', '=', $id )->get();
    return Response::json($songs);

});


