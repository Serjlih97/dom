<?php
/**
* Контроллер для главной странице
*/
class MembersController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', 'Наши воспитанники');
		$this->view->setVar('page', 'Наши воспитанники');
	}
}
