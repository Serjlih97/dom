<?php
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
/**
* Контроллер для главной странице
*/
class HelpController extends ControllerBase
{
	public function indexAction()
	{
		$helpsBuilder    = $this->modelsManager->createBuilder()
			->from('Helps')
			->orderBy('date_end desc')
			->where('date_end > now()');

		$helpsPaginator = new PaginatorQueryBuilder([
			'builder' => $helpsBuilder,
			'limit'   => 2,
			'page'    => 1
		]);
		$helpsPaginator = $helpsPaginator->getPaginate();

		$this->view->setVar('helpsPaginator', $helpsPaginator);
		$this->view->setVar('title', 'Нужна помощь');
		$this->view->setVar('page', 'Нужна помощь');
	}

	public function detailAction($id = false)
	{
		if(!$id)
			$this->pageNotFound();

		$help = Helps::findFirstById($id);

		if(!$help)
			$this->pageNotFound();

		$this->view->setVar('element', $help);

		$this->view->setVar('title', $help->name);
		$this->view->setVar('page', 'Нужна помощь');
	}
}
