<?php
/**
* Контроллер для главной странице
*/
class AboutController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', 'О нас');
		$this->view->setVar('section', 'about');
	}
}
