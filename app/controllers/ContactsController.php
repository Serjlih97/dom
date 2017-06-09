<?php
/**
* Контроллер для главной странице
*/
class ContactsController extends ControllerBase
{
	public function indexAction()
	{
		$contacts = Contacts::find();

		$this->view->setVar('contacts', $contacts);
		$this->view->setVar('title', 'Контакты');
		$this->view->setVar('section', 'contacts');
	}
}
