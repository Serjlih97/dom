<?php
/**
* Контроллер для главной странице
*/
class GalleryController extends ControllerBase
{
	public function indexAction()
	{
		$photos = Photos::find(['group' => 'albom_id']);

		if(!$photos)
			return true;

		$albomIds = array_column($photos->toArray(), 'albom_id');
		$albomIds = join($albomIds, ',');
		$alboms   = Alboms::find(['conditions' => "id in({$albomIds})"]);

		$this->view->setVar('alboms', $alboms);
		$this->view->setVar('title', 'Фотогалерея');
		$this->view->setVar('page', 'Фотогалерея');
	}

	public function albomAction($id)
	{
		$albom = Alboms::findFirstById($id);

		if(!$albom)
			$this->pageNotFound();

		$this->view->setVar('photos', $albom->photos);
	}
}
