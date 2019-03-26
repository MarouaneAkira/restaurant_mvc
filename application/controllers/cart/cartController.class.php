<?php

	class cartController {

		public function httpGetMethod(Http $http, array $queryFields){

			
			$session = new UserSession();
			$user = $session->sessionshow();
			// var_dump($user['id']);

			$mealmodel = new MealModel();
			$carts = $mealmodel->showtoCart($user['id']);
			// var_dump($carts);

			$c = $mealmodel->cart($user['id']);
			// var_dump($c);
			// $meals = array();
			// foreach($c as $cart):
			// 	// $meals = $mealmodel->listcart($cart);
			// 	// foreach ($cart as $key) {
			// 		array_push($meals, $mealmodel->listcart($cart['mealid']));
			// 	// }
				
			// endforeach;
			return ['meals' => $c];
		

		}

		public function httpPostMethod(Http $http, array $formFields){

		
			

		}
	
	}