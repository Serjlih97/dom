<?php
use \Phalcon\Mvc\Model;
/**
* Модель для таблицы контентных страниц
*/
class Photos extends ModelBase
{
	/**
	 * Инит функция в ней :
	 *   Создается связь с таблицей пользователей(hasMany)
	 *   Создается связь с таблицей Результатов игр(hasMany)
	 */
	public function initialize()
	{
		// Альбом фотографии
		$this->hasOne('albom_id', 'Alboms', 'id', [
			'alias'  => 'albom'
		]);
	}

	/**
	 * Функция для получения фото
	 * @return string        Адрес изображения
	 */
	public function getPicture()
	{
		if(!$this->photo)
			return false;

		$image = json_decode($this->photo, true)[0]['path'];
		return $image;
	}
}