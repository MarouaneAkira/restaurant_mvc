<?php


class InscriptionForm extends Form{

	public function build(){

		$this->addFormField('firstname');
		$this->addFormField('lastname');
		$this->addFormField('email');
		$this->addFormField('address');
		$this->addFormField('password');

	}

}