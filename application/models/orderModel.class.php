<?php 

class orderModel {

	public function orderList() {

		$db = new Database();

		$sql = 'INSERT INTO orders (userid, mealid, qte, totalprice) VALUES ("'.$userid.'", "'.$mealid.'", "'.$qte.'", "'.$totalprice.'")';

		return $db->executeSql($sql);
	}
}