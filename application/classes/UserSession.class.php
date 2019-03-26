<?php


class UserSession{


	public function __construct(){

		session_start();

	}

	public function Sessionopen($email,$id){

		$_SESSION['email'] = $email;
		$_SESSION['id'] = $id;

		// $_SESSION['user']['cart'] = $cart;

		return $_SESSION;

	}

	public function sessionshow(){
		return $_SESSION;
	}

	public function verifySession(){

		if(!empty($_SESSION)){
			return true;
		}

		return false;

	}

	public function destroySession(){

		if(!empty($_SESSION)){

			session_destroy();

		}

	}


}