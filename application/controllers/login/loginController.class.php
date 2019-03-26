<?php

class LoginController{
	public function httpGetMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */

        $session = new UserSession();

        if($session->verifySession()){
            $http->redirectTo('/');
        }

    	return [ '_form' => new LoginForm() ];
    }

    public function httpPostMethod(Http $http, array $formFields){

        $loginmodel = new UserModel();

        $email = strtolower($formFields['email']);
        $password = md5($formFields['password']);
        if($loginmodel->selectUser($email, $password)){
            $result = $loginmodel->selectUser($email, $password);

            $id = $result['id'];
            $session = new UserSession();

            $session->Sessionopen($email,$id);

            if($session->verifySession()){
                $http->redirectTo('/');
            }



            // $http->redirectTo('/');
        }
       // var_dump($loginmodel->selectUser($email, $password));


        // var_dump($usermodel);

        
    }
}