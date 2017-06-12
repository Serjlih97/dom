<?php
/**
* Контроллер для главной странице
*/
class SearchController extends ControllerBase
{
	public function indexAction()
	{
		$this->view->setVar('title', $news->name);
	}
}
