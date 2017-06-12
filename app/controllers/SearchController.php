<?php
/**
* Контроллер для главной странице
*/
class SearchController extends ControllerBase
{
	public function indexAction()
	{
		$search = $this->request->get('search');

		if(empty($search))
		{
			header('Location: /');
			exit();
		}

		$filter = [
			'conditions' => 'name LIKE ?0 OR html LIKE ?0',
			'order' => 'date desc',
			'bind' => ["%{$search}%"]
		];

		$news  = News::find($filter);

		$filter = [
			'conditions' => 'name LIKE ?0 OR text LIKE ?0',
			'order' => 'date_end desc',
			'bind' => ["%{$search}%"]
		];
		$helps = Helps::find($filter);

		$filter = [
			'conditions' => 'name LIKE ?0 OR text LIKE ?0',
			'order' => 'date desc',
			'bind' => ["%{$search}%"]
		];
		$events = Events::find($filter);

		$this->view->setVar('newsList', $news);
		$this->view->setVar('helps', $helps);
		$this->view->setVar('events', $events);
		$this->view->setVar('search', $search);
		$this->view->setVar('title', 'Поиск');
	}
}
