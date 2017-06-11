<?php
/**
* Контроллер для главной странице
*/
class HelpController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', 'Нужна помощь');
		$this->view->setVar('page', 'Нужна помощь');
	}
}
