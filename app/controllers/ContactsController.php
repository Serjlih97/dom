<?php
/**
* Контроллер для главной странице
*/
class ContactsController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', 'Контакты');
		$this->view->setVar('section', 'contacts');
	}
}
