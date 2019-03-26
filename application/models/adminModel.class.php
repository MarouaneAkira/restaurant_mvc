<?php 


	class AdminModel{

		public function insertAll($name, $password){

			$db = new Database();

            $sql = "INSERT INTO master (name, password) VALUES ('".$name."', '".$password."')";
            
            return $db->executeSql($sql);
            
        
        }

        public function getAll(){

            $db = new Database();

            $sql = 'SELECT * FROM meals';

            return $db->query($sql);
        }
    }