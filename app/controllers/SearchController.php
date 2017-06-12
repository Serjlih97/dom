<?php
/**
* Контроллер для главной странице
*/
class SearchController extends ControllerBase
{
	public function indexAction()
	{
		$search = $this->request->get('search');
		$activetab = '';

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

		if(count($news) > 0)
			$activetab = 'news';

		$filter = [
			'conditions' => 'name LIKE ?0 OR text LIKE ?0',
			'order' => 'date_end desc',
			'bind' => ["%{$search}%"]
		];
		$helps = Helps::find($filter);

		if(count($helps) > 0)
			$activetab = 'helps';

		$filter = [
			'conditions' => 'name LIKE ?0 OR text LIKE ?0',
			'order' => 'date desc',
			'bind' => ["%{$search}%"]
		];
		$events = Events::find($filter);

		if(count($events) > 0)
			$activetab = 'events';

		$this->view->setVar('activetab', $activetab);
		$this->view->setVar('newsList', $news);
		$this->view->setVar('helps', $helps);
		$this->view->setVar('events', $events);
		$this->view->setVar('search', $search);
		$this->view->setVar('title', 'Поиск');
	}
}
