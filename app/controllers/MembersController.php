<?php
/**
* Контроллер для главной странице
*/
class MembersController extends ControllerBase
{
	public function indexAction()
	{
		$inmates = Inmates::find();

		$this->view->setVar('inmates', $inmates);
		$this->view->setVar('title', 'Наши воспитанники');
		$this->view->setVar('page', 'Наши воспитанники');
	}
}
