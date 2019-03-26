<?php


/**
 * 
 */
class LoginController
{
	
	public function HttpGetMethod(Http $http, array $queryFeilds)
	{
		
	}

	public function HttpPostMethod(http $http, array $formFields)
	{
		$adminmodel = new AdminModel();

		$name = strtolower($formFields['name']);
		$password = md5($formFields['password']);

		$adminmodel->insertAll($name, $password);


	}
}