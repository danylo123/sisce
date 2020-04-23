<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
|Aqui é onde você pode registrar rotas da web para seu aplicativo. Estes
|rotas são carregadas pelo RouteServiceProvider dentro de um grupo que
|contém o grupo de middleware "web". Agora crie algo ótimo!
|
*/

Route::get('/', 'PagesController@index'); // pagina inicial 

Route::get('/index', 'PagesController@index'); // pagina inicial 

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/logout', 'HomeController@logout');

Route::get('/perfil', 'PerfilController@perfil')->name('perfil')->middleware('auth'); // Tela Perfil
Route::post('/perfil/perfilEditar', 'PerfilController@perfilEditar')->name('perfil/perfilEditar')->middleware('auth');; // Tela Editar Perfil

//Capitulo
Route::get('/capitulo/cadastrar', 'CapituloController@cadastrar')->name('/capitulo/cadastrar')->middleware('auth'); // Tela Perfil
Route::post('/capitulo/store', 'CapituloController@store')->name('/capitulo/store')->middleware('auth'); // Tela Perfil
Route::get('/capitulos', 'CapituloController@listar')->name('capitulos')->middleware('auth'); // Tela Perfil
Route::get('/capitulo/editar/{id}', 'CapituloController@editarCapitulo')->name('/capitulo/editar/{id}')->middleware('auth'); // Tela Perfil
Route::put('/capitulo/update/{id}', 'CapituloController@update')->middleware('auth'); // Tela Perfil

//Galeria
Route::get('/galeria/cadastrar', 'GaleriaController@cadastrar')->name('galeria/cadastrar')->middleware('auth'); // Tela Perfil
Route::post('/galeria/store', 'GaleriaController@store')->name('galeria/store')->middleware('auth'); // Tela Perfil
Route::get('/galeria/editar/{id}', 'GaleriaController@editarGaleria')->name('galeria/editar/{id}')->middleware('auth'); // Tela Perfil

//Listar galerias
Route::get('/galeria/gme', 'GaleriaController@listarGme')->name('galeria/gme')->middleware('auth'); // Tela Perfil
Route::get('/galeria/mce', 'GaleriaController@listarMce')->name('galeria/mce')->middleware('auth'); // Tela Perfil
Route::get('/galeria/icce', 'GaleriaController@listarIcce')->name('galeria/icce')->middleware('auth'); // Tela Perfil
Route::get('/galeria/oficiais_executivos', 'GaleriaController@listarOfcExec')->name('galeria/oficiais_executivos')->middleware('auth'); // Tela Perfil
Route::get('/galeria/mcr', 'GaleriaController@listarMcr')->name('galeria/mcr')->middleware('auth'); // Tela Perfil
Route::get('/galeria/adace', 'GaleriaController@listarAdace')->name('galeria/adace')->middleware('auth'); // Tela Perfil
Route::get('/galeria/gcc', 'GaleriaController@listarGcc')->name('galeria/gcc')->middleware('auth'); // Tela Perfil

//Transparencia
Route::get('/transparencia/cadastrar', 'TransparenciaController@cadastrar')->name('transparencia/cadastrar')->middleware('auth'); // Tela Perfil
Route::post('/transparencia/store', 'TransparenciaController@store')->name('transparencia/store')->middleware('auth'); // Tela Perfil

//Litar transparencia
Route::get('/transparencia/gce', 'TransparenciaController@listarGce')->name('transparencia/gce')->middleware('auth'); // Tela Perfil
Route::get('/transparencia/gce/{ano}', 'TransparenciaController@listarGceAno')->name('/transparencia/gce/{ano}')->middleware('auth'); // Tela Perfil

Route::get('/transparencia/adace', 'TransparenciaController@listarAdace')->name('transparencia/adace')->middleware('auth'); // Tela Perfil
Route::get('/transparencia/adace/{ano}', 'TransparenciaController@listarAdaceAno')->name('/transparencia/adace/{ano}')->middleware('auth'); // Tela Perfil

//Documentos
Route::get('/documento/pasta', 'DocumentoController@cadastrarPasta')->name('documento/pasta')->middleware('auth'); // Tela Perfil
Route::post('/documento/storePasta', 'DocumentoController@storePasta')->name('documento/storePasta')->middleware('auth'); // Tela Perfil

Route::get('/documento/cadastrar', 'DocumentoController@cadastrar')->name('documento/cadastrar')->middleware('auth'); // Tela Perfil
Route::post('/documento/store', 'DocumentoController@store')->name('documento/store')->middleware('auth'); // Tela Perfil

//Litar documentos
Route::get('/documento/gce', 'DocumentoController@listarGce')->name('documento/gce')->middleware('auth'); // Tela Perfil
Route::get('/documento/gce/{id}', 'DocumentoController@listarGcePasta')->name('/documento/gce/{id}')->middleware('auth'); // Tela Perfil

Route::get('/documento/ge', 'DocumentoController@listarGe')->name('documento/ge')->middleware('auth'); // Tela Perfil
Route::get('/documento/ge/{id}', 'DocumentoController@listarGePasta')->name('/documento/ge/{id}')->middleware('auth'); // Tela Perfil

Route::get('/documento/adace', 'DocumentoController@listarAdace')->name('documento/adace')->middleware('auth'); // Tela Perfil
Route::get('/documento/adace/{id}', 'DocumentoController@listarAdacePasta')->name('/documento/adace/{id}')->middleware('auth'); // Tela Perfil

Route::get('/documento/icce', 'DocumentoController@listarIcce')->name('documento/icce')->middleware('auth'); // Tela Perfil
Route::get('/documento/icce/{id}', 'DocumentoController@listarIccePasta')->name('/documento/icce/{id}')->middleware('auth'); // Tela Perfil


//Midias
Route::get('/midias', 'PastaMidiaController@listar')->name('midias')->middleware('auth'); // Tela Perfil
Route::get('/midia/cadastrar', 'MidiaController@cadastrar')->name('midia/cadastrar')->middleware('auth'); // Tela Perfil

Route::post('/midia/storePasta', 'PastaMidiaController@storePasta')->name('midia/storePasta')->middleware('auth'); // Tela Perfil
Route::post('/midia/store', 'MidiaController@store')->name('midia/store')->middleware('auth'); // Tela Perfil

Route::get('/midia/pasta/{id}', 'MidiaController@listarPasta')->name('/midia/pasta/{id}')->middleware('auth'); // Tela Perfil


//Ouvidoria
Route::get('/ouvidoria', 'OuvidoriaController@cadastrar')->name('ouvidoria')->middleware('auth'); // Tela Perfil
