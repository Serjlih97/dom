<?php
/**
* Контроллер для главной странице
*/
class NewsController extends ControllerBase
{
	public function detailAction($id = false)
	{
		if(!$id)
			$this->pageNotFound();

		$news = News::findFirstById($id);

		if(!$news)
			$this->pageNotFound();

		$this->view->setVar('element', $news);
		$this->view->setVar('title', $news->name);
	}
}
