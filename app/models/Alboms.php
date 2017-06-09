<?php
use \Phalcon\Mvc\Model;
/**
* Модель для таблицы контентных страниц
*/
class Alboms extends ModelBase
{
	/**
	 * Инит функция в ней :
	 *   Создается связь с таблицей пользователей(hasMany)
	 *   Создается связь с таблицей Результатов игр(hasMany)
	 */
	public function initialize()
	{
		// Первая фотография в альбоме
		$this->hasOne('id', 'Photos', 'albom_id', [
			'alias'  => 'photo'
		]);

		// Все фото альбома
		$this->hasMany('id', 'Photos', 'albom_id', [
			'alias'  => 'photos'
		]);
	}

	/**
	 * Функция для генирации url детальной страницы альбома
	 * @return string url до детальной страницы альбома
	 */
	public function getUrl()
	{
		return "/gallery/albom/{$this->id}/";
	}
}