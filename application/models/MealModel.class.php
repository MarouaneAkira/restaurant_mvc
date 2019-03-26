<?php 

	class MealModel{

		public function listAll(){

			$db = new Database();

			$sql = 'SELECT * FROM meal';

			return $db->query($sql);

		}

		public function listOne($id){

			$db = new Database();

			$sql = 'SELECT * FROM meal WHERE id = "'.$id.'"';

			return $db->queryOne($sql);

		}

		public function listcart($id){
			$db = new Database();

			$sql = 'SELECT * FROM meal WHERE id = "'.$id.'"';

			return $db->query($sql);
		}

		public function addToCart($userid,$mealid,$totalprice,$qte){
			$db = new database();

			$sql = "INSERT INTO cart VALUES ('".$userid."','".$mealid."','".$totalprice."','".$qte."')";

			$db->executeSql($sql);
		}

		public function showtoCart($userid){

			$db = new database();

			$sql = "SELECT * FROM cart WHERE userid = '".$userid."'";

			$cart = $db->query($sql);

			// return ['cart' => $cart];
			return $cart;

		}

		public function cart($userid){

			$db = new Database();
			// $sql = "select SUM(`Quantity`) FROM cart WHERE userid = ".$userid." GROUP BY `mealid`";

			$sql = "select meal.Id, meal.Name, Quantity as qte, TotalPrice as total FROM cart, meal WHERE meal.Id = mealid && userid = ".$userid."";

			$result = $db->query($sql);

			return $result;

		}

		public function Insertorders($userid, $mealid, $qte, $totalprice){

			$db = new Database();

			$sql = "INSERT INTO orders VALUES ('".$userid."','".$mealid."','".$qte."','".$totalprice."')";
			
			return $db->executeSql($sql);

		}

	}

 ?>