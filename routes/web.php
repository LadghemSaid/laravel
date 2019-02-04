<?php

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

Route::Get('/', 'Moncontrolleur@index');

Route::Get('/bonjour/{nom}', 'Moncontrolleur@bonjour');

Route::Get('/test', 'Moncontrolleur@test');

Route::Get('/personnes','Moncontrolleur@personnes');

Route::Get('/personne/{id}', 'Moncontrolleur@personne')->where('id','[0-9]+');

Route::Get('/films','Moncontrolleur@films');



