<?php

/**
 * 
 */
class AdminController
{
	
	public function HttpPostMethod(Http $http, array $formFields)
	{
		
	}

	public function HttpGetMethod(http $http, array $queryFields)
	{
		
		$meals = new MealModel();

		$meal = $meals->listAll();
		
		return [ 'ttt' => $meal ];


	}
}