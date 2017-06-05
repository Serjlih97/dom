<?php
/**
* Контроллер для главной странице
*/
class GalleryController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', 'Фотогалерея');
		$this->view->setVar('page', 'Фотогалерея');
	}
}
