<?php
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
/**
* Контроллер для главной странице
*/
class EventsController extends ControllerBase
{
	public function indexAction()
	{
		$eventsBuilder    = $this->modelsManager->createBuilder()
			->from('Events')
			->orderBy('date desc');

		$eventsPaginator = new PaginatorQueryBuilder([
			'builder' => $eventsBuilder,
			'limit'   => 2,
			'page'    => 1
		]);
		$eventsPaginator = $eventsPaginator->getPaginate();
		$this->view->setVar('eventsPaginator', $eventsPaginator);
		$this->view->setVar('title', 'Мероприятия');
		$this->view->setVar('page', 'Мероприятия');
	}
}
