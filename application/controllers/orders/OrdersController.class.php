<?php

class OrdersController{
	public function httpGetMethod(Http $http, array $queryFields){


		$session = new UserSession();
		if(!$session->verifySession()){
			$http->redirectTo('/login');
		}
		$id = $_GET['id'];
		$meal = new MealModel();

		$meals = $meal->listOne($id);

		// $session = new UserSession();
			$user = $session->sessionshow();
			// var_dump($user['id']);

			// $mealmodel = new MealModel();
			$carts = $meal->showtoCart($user['id']);
			// var_dump($carts);

			$c = $meal->cart($user['id']);
			// var_dump($c);
			// $meals = array();
			// foreach($c as $cart):
			// 	// $meals = $mealmodel->listcart($cart);
			// 	// foreach ($cart as $key) {
			// 		array_push($meals, $mealmodel->listcart($cart['mealid']));
			// 	// }
				
			// endforeach;
			return ['ttt' => $meals, 'meals' => $c];


		// return [ 'ttt' => $meals ];	

	}
	public function httpPostMethod(Http $http, array $formFields){

		$mealid = $formFields['id'];
		$saleprice = $formFields['SalePrice'];
		$qte = $formFields['quantite'];

		$session = new UserSession();
		$user = $session->sessionshow();

		$userid = $user['id'];
		// var_dump($user);

		$total = $saleprice*$qte;

		// var_dump($mealid,$qte, $total, $userid);

		$mealmodel = new MealModel();
		$mealmodel->addToCart($userid, $mealid, $total, $qte);
		$http->redirectTo('/cart');
		// var_dump($user);

		$id = $_GET['id'];
		$meal = new MealModel();

		$meals = $meal->listOne($id);


		return [ 'ttt' => $meals ];
	}
}