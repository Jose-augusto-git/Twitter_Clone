<?php

namespace App\Controllers;

//os recursos do miniframework

use App\Models\Usuario;
use MF\Controller\Action;
use MF\Model\Container;

class IndexController extends Action {

	public function index() {
		$this->view->login = isset($_GET['login']) ? $_GET['login'] : '';
		$this->render('index');

	}

	public function inscreverse(){
		// dados preenchidos não serão perdidos ate realizar o cadastro quando tiver erro
		$this->view->usuario = array(
			'nome' => '',
			'email' => '',
			'senha' => '',

		);
	
		$this->view->erroCadastro = false;

		$this->render('inscreverse');	
	}

	public function registrar(){
		//receber dados do formulário
		$usuario = Container::getModel('Usuario');

		$usuario->__set('nome', $_POST['nome']);
		$usuario->__set('email', $_POST['email']);
		$usuario->__set('senha', md5($_POST['senha']));


		if($usuario->validarCadastro() && count($usuario->getUsuarioPorEmail()) == 0){
			//salvar
			$usuario->salvar();

			//sucesso
			$this->render('cadastro');
					
		}else{
			// dados preenchidos não serão perdidos ate realizar o cadastro quando tiver erro
			$this->view->usuario = array(
				'nome' => $_POST['nome'],
				'email' => $_POST['email'],
				'senha' => $_POST['senha'],

			);


			//erro
			$this->view->erroCadastro = true;

			$this->render('inscreverse');

		}

		

		

		

	}

}


?>