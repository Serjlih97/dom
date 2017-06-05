<?php
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
/**
* Контроллер для главной странице
*/
class IndexController extends ControllerBase
{
	public function indexAction()
	{
		$newsBuilder    = $this->modelsManager->createBuilder()
			->from('News')
			->orderBy('date desc');

		$newsPaginator = new PaginatorQueryBuilder([
			'builder' => $newsBuilder,
			'limit'   => 5,
			'page'    => 1
		]);
		$newsPaginator = $newsPaginator->getPaginate();

		$this->view->setVar('newsPaginator', $newsPaginator);
	}

	public function notfoundAction()
	{
	}
}
