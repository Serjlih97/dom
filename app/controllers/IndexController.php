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

		if(!empty($this->request->get('year')))
		{
			$year = $this->request->get('year');
			$newsBuilder->where('date BETWEEN "' . $year . '-01-01" AND "' . $year . '-12-31"');
			$this->view->setVar('selectYear', $year);
		}

		$newsPaginator = new PaginatorQueryBuilder([
			'builder' => $newsBuilder,
			'limit'   => 2,
			'page'    => 1
		]);
		$newsPaginator = $newsPaginator->getPaginate();

		$this->view->setVar('newsPaginator', $newsPaginator);
	}

	public function notfoundAction()
	{
	}
}
