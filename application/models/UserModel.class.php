<?php 


	class UserModel{

		public function insertAll($firstname,$lastname,$email,$address,$password){

			$db = new Database();

			$sql = 'INSERT INTO user (firstname, lastname, email, address, password) VALUES ("'.$firstname.'", "'.$lastname.'","'.$email.'","'.$address.'","'.$password.'")';

			return $db->executeSql($sql);



		}

		public function selectUser($email, $password){

			$db = new Database();

			$sql = "SELECT * FROM user WHERE email = '".$email."' && password = '".$password."'";

			return $db->queryOne($sql);

			

		}


	}




 ?>