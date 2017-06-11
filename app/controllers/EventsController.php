<?php
/**
* Контроллер для главной странице
*/
class EventsController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', 'Мероприятия');
		$this->view->setVar('page', 'Мероприятия');
	}
}
