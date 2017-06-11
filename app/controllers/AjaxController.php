<?php
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
/**
* Контроллер для главной странице
*/
class AjaxController extends ControllerBase
{
	public function getNewsAction()
	{
		$page = $this->request->getPost('page');
		$year = $this->request->get('year');

		$newsBuilder    = $this->modelsManager->createBuilder()
			->from('News')
			->orderBy('date desc');

		if(!empty($year))
		{
			$newsBuilder->where('date BETWEEN "' . $year . '-01-01" AND "' . $year . '-12-31"');
			$this->view->setVar('selectYear', $year);
		}

		$newsPaginator = new PaginatorQueryBuilder([
			'builder' => $newsBuilder,
			'limit'   => 2,
			'page'    => $page
		]);
		$newsPaginator = $newsPaginator->getPaginate();

		$this->view->setVar('newsPaginator', $newsPaginator);
		$view = $this->view->getRender('inc', 'news');
		return $this->jsonResult(['success' => true, 'html' => $view]);
	}

	public function getHelpsAction()
	{
		$page = $this->request->getPost('page');
		$helpsBuilder    = $this->modelsManager->createBuilder()
			->from('Helps')
			->orderBy('date_end desc')
			->where('date_end > now()');

		$helpsPaginator = new PaginatorQueryBuilder([
			'builder' => $helpsBuilder,
			'limit'   => 2,
			'page'    => $page
		]);
		$helpsPaginator = $helpsPaginator->getPaginate();

		$this->view->setVar('helpsPaginator', $helpsPaginator);
		$view = $this->view->getRender('help/inc', 'helps');
		return $this->jsonResult(['success' => true, 'html' => $view]);
	}

	public function getEventsAction()
	{
		$page = $this->request->getPost('page');
		$eventsBuilder    = $this->modelsManager->createBuilder()
			->from('Events')
			->orderBy('date desc');

		$eventsPaginator = new PaginatorQueryBuilder([
			'builder' => $eventsBuilder,
			'limit'   => 2,
			'page'    => $page
		]);
		$eventsPaginator = $eventsPaginator->getPaginate();
		$view = $this->view->getRender('events/inc', 'events');
		return $this->jsonResult(['success' => true, 'html' => $view]);
	}
}
