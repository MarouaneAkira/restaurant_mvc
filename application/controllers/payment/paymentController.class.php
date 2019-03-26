<?php

class PaymentController{
	public function httpGetMethod(Http $http, array $queryFields){

		// $id = $_GET['id'];
		// $meal = new MealModel();

		// $meals = $meal->listAll($id);


		// return [ 'ttt' => $meals ];

		var_dump($queryFields);

	}

	public function httpPostMethod(Http $http, array $formFields){

		// $id = $_GET['id'];
		// $meal = new MealModel();

		// $meals = $meal->listAll($id);


		// return [ 'ttt' => $meals ];

		// var_dump($formFields);

		$session = new UserSession();

		$user = $session->sessionshow();

		// var_dump($user);

		$mealmodel = new MealModel();

		$meal = $mealmodel->cart($user['userid']);

			foreach($meal as $meals){
				$mealmodel->Insertorders($user['userid'], $meals['mealid'], $meals['qte'], $meals['totalprice']);
		}

	}
}