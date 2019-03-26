<?php


class InscriptionController{

	public function httpGetMethod(Http $http, array $queryFields){

		return [ '_form' => new InscriptionForm() ];

	}


	public function httpPostMethod(Http $http, array $formFields){

		$usermodel = new UserModel();

		$firstname = strtolower($formFields['firstname']);
		$lastname =  strtolower($formFields['lastname']);
		$email = strtolower($formFields['email']);
		$address = strtolower($formFields['address']);
		$password = md5($formFields['password']);

		$usermodel->insertAll($firstname, $lastname, $email, $address, $password);


		// var_dump($usermodel);

		
	}

}