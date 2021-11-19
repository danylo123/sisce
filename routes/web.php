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



Route::get('/expulsar', 'HomeController@expulsar')->name('expulsar');

Auth::routes();
Route::group(['middleware' => ['auth', 'acesso.ativo']], function () {

    Route::get('/', 'HomeController@index'); // pagina inicial 


    Route::get('/index', 'HomeController@index');

    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/logout', 'HomeController@logout');


    Route::get('/perfil', 'PerfilController@perfil')->name('perfil')->middleware('auth'); // Tela Perfil
    Route::post('/perfil/perfilEditar', 'PerfilController@perfilEditar')->name('perfil/perfilEditar')->middleware('auth');; // Tela Editar Perfil

    //Capitulo
    Route::get('/capitulos', 'CapituloController@listar')->name('capitulos')->middleware('auth'); // Tela Perfil
    Route::get('/capitulo/{numero}/membros', 'CapituloController@listarMembro')->middleware('auth'); // Tela Perfil

    //Listar galerias
    Route::get('/galeria/gme', 'GaleriaController@listarGme')->name('galeria/gme')->middleware('auth'); // Tela Perfil
    Route::get('/galeria/mce', 'GaleriaController@listarMce')->name('galeria/mce')->middleware('auth'); // Tela Perfil
    Route::get('/galeria/icce', 'GaleriaController@listarIcce')->name('galeria/icce')->middleware('auth'); // Tela Perfil
    Route::get('/galeria/oficiais_executivos', 'GaleriaController@listarOfcExec')->name('galeria/oficiais_executivos')->middleware('auth'); // Tela Perfil
    Route::get('/galeria/mcr', 'GaleriaController@listarMcr')->name('galeria/mcr')->middleware('auth'); // Tela Perfil
    Route::get('/galeria/adace', 'GaleriaController@listarAdace')->name('galeria/adace')->middleware('auth'); // Tela Perfil
    Route::get('/galeria/gcc', 'GaleriaController@listarGcc')->name('galeria/gcc')->middleware('auth'); // Tela Perfil


    //Litar transparencia
    Route::get('/transparencia/gce', 'TransparenciaController@listarGce')->name('transparencia/gce')->middleware('auth'); // Tela Perfil
    Route::get('/transparencia/gce/{ano}', 'TransparenciaController@listarGceAno')->name('/transparencia/gce/{ano}')->middleware('auth'); // Tela Perfil

    Route::get('/transparencia/adace', 'TransparenciaController@listarAdace')->name('transparencia/adace')->middleware('auth'); // Tela Perfil
    Route::get('/transparencia/adace/{ano}', 'TransparenciaController@listarAdaceAno')->name('/transparencia/adace/{ano}')->middleware('auth'); // Tela Perfil


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
    Route::get('/midias', 'PastaMidiaController@listarPastas')->name('midias')->middleware('auth'); // Tela Perfil
    Route::get('/midia/pasta/{id}', 'PastaMidiaController@listarArquivosPasta')->name('midia.pasta.{id}')->middleware('auth'); // Tela Perfil

    //Ouvidoria
    Route::get('/ouvidoria', 'OuvidoriaController@cadastrar')->name('ouvidoria')->middleware('auth'); // Tela Perfil

});
//Painel ADM
Route::group(['middleware' => ['auth', 'acesso.admin']], function () {
    // Precisa estar autenticado e ser nivel 3 para conseguir acessar 

    Route::get('/painel/capitulos', 'PainelController@capituloListar')->name('painel.capitulos');
    Route::get('/painel/capitulo/novo', 'PainelController@capituloCadastrar')->name('painel.capitulo.cadastrar');
    Route::post('/painel/capitulo/novo', 'CapituloController@store')->name('painel.capitulo.novo');
    Route::get('/painel/capitulo/editar/{id}', 'PainelController@capituloEditar');
    Route::post('/painel/capitulo/editar', 'CapituloController@update')->name('painel.capitulo.edit');


    Route::get('/painel/galerias', 'PainelController@galeriaListar')->name('painel.galerias');
    Route::get('/painel/galeria/novo', 'PainelController@galeriaCadastrar')->name('painel.galeria.cadastrar');
    Route::post('/painel/galeria/novo', 'GaleriaController@store')->name('painel.galeria.novo');
    Route::get('/painel/galeria/editar/{id}', 'PainelController@galeriaEditar');
    Route::post('/painel/galeria/editar', 'GaleriaController@edit')->name('painel.galeria.editar');


    Route::get('/painel/usuarios', 'PainelController@usuarioListar')->name('painel.usuarios');
    Route::any('/painel/usuarios-search', 'PainelController@usuarioSearch')->name('painel.usuarios-search');

    Route::get('/painel/usuario/novo', 'PainelController@usuarioCadastrar')->name('painel.usuario.cadastrar');
    Route::post('/painel/usuario/novo', 'UsuarioController@store')->name('painel.usuario.novo');
    Route::get('/painel/usuario/editar/{id}', 'PainelController@usuarioEditar');
    Route::post('/painel/usuario/editar', 'UsuarioController@edit')->name('painel.usuario.edit');
    Route::get('/painel/usuario/excluir/{id}', 'UsuarioController@excluir')->name('painel.usuario.excluir');


    Route::get('/painel/avisos', 'PainelController@avisoListar')->name('painel.avisos');
    Route::get('/painel/aviso/novo', 'PainelController@avisoCadastrar')->name('painel.aviso.cadastrar');
    Route::post('/painel/aviso/novo', 'AvisoController@store')->name('painel.aviso.novo');
    Route::get('/painel/aviso/editar/{id}', 'PainelController@avisoEditar');
    Route::post('/painel/aviso/editar', 'AvisoController@edit')->name('painel.aviso.editar');


    Route::get('/painel/transparencia/cadastrar', 'PainelController@transparenciaCadastrar')->name('painel.transparencia.cadastrar');
    Route::post('/painel/transparencia/cadastrar', 'TransparenciaController@store')->name('painel.transparencia.novo');
    Route::get('/painel/transparencia', 'PainelController@transparenciaListar')->name('painel.transparencia');
    Route::get('/painel/transparencia/editar/{id}', 'PainelController@transparenciaEditar');
    Route::post('/painel/transparencia/editar', 'TransparenciaController@edit')->name('painel.transparencia.editar');


    Route::post('/painel/documento/storePasta', 'DocumentoController@storePasta')->name('painel.documento.storePasta');
    Route::post('/painel/documento/excluirPasta', 'DocumentoController@excluirPasta')->name('painel.documento.excluirPasta');
    Route::get('/painel/documento/pasta/editar/{id}', 'DocumentoController@editPasta');
    Route::get('/painel/documento/pasta/{id}', 'DocumentoController@listarArquivos');
    Route::get('/painel/documento/cadastrar/{id}', 'PainelController@documentoCadastrar');
    Route::post('/painel/documento/cadastrar', 'DocumentoController@store')->name('painel.documento.novo');
    Route::get('/painel/documentos', 'PainelController@documentoListar')->name('painel.documentos');
    Route::get('/painel/documento/editar/{id}', 'PainelController@documentoEditar');
    Route::post('/painel/documento/editar', 'DocumentoController@edit')->name('painel.documento.editar');

    Route::get('/painel/midias', 'PastaMidiaController@listar')->name('painel.midias');
    Route::get('/painel/midia/pasta/{id}', 'PastaMidiaController@listarArquivos')->name('painel.midia.pasta.{id}');
    Route::post('/painel/midia/pasta/store', 'PastaMidiaController@storePasta')->name('painel.midia.pasta.store');
    Route::post('/painel/midia/excluirPasta', 'PastaMidiaController@excluirPasta')->name('painel.midia.excluirPasta');
    Route::get('/painel/midia/cadastrar/{id}', 'PastaMidiaController@cadastrar')->name('painel.midia.cadastrar.{id}');
    Route::post('/painel/midia/store', 'MidiaController@store')->name('painel.midia.store');
});
