<?php

use Illuminate\Http\Request;




    Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::get('read-book/{bookId}', 'AuthController@readBook');
    Route::get('all-books', 'AuthController@allBooks');

    Route::group([
      'middleware' => 'auth:api'
    ], function() {
        Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
        Route::post('create-book', 'AuthController@addBooks');
        Route::post('update-book/{bookId}', 'AuthController@updateBook');
        Route::delete('delete-book/{bookId}', 'AuthController@destroyBook');
        Route::get('my-books', 'AuthController@myBooks');
    });
});



