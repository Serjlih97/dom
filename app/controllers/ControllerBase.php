<?php
use Phalcon\Mvc\Controller;

/**
 * Контроллер для наследования
 */
class ControllerBase extends Controller
{
	/**
	 * Инит функция
	 * 	Получение информации об авторизованности пользователя
	 */
	public function initialize()
	{
		$siteInfo = SiteInfo::findFirst();
		$menu = [
			[
				'name' => 'Новости',
				'url' => '/'
			],
			[
				'name' => 'Нужна помощь',
				'url' => '/help/'
			],
			[
				'name' => 'Мероприятия',
				'url' => '/events/'
			],
			[
				'name' => 'Наши воспитанники',
				'url' => '/members/'
			],
			[
				'name' => 'Фотогалерея',
				'url' => '/gallery/'
			]
		];
		$links = Links::find();
		$socialContacts = SocialContacts::find();
		$aboutUs = AboutUs::find();

		$this->view->setVar('aboutUs', $aboutUs);
		$this->view->setVar('socialContacts', $socialContacts);
		$this->view->setVar('links', $links);
		$this->view->setVar('siteInfo', $siteInfo);
		$this->view->setVar('title', 'Главная');
		$this->view->setVar('menu', $menu);
	}

	/**
	 * Функция открытия 404 страницы
	 * @return view 404 страница
	 */
	public function pageNotFound()
	{
		/**
		 * если запрос ничего не дал
		 */
		if(!$this->request->isAjax())
		{
			header('Location: /notfound/');
			// $this->response->redirect('/notfound/');
			$this->view->disable();
		}
		else
			$this->jsonResult(['result'=>'error','msg'=>'not found']);

		exit();
	}

	/**
	 * Функуция для ответа json
	 * 	Отключение view
	 * @param  array $data Массив данных для отдачи в формате json
	 */
	public function jsonResult($data)
	{
		echo json_encode($data);
		$this->view->disable();
		return;
	}
}

?>