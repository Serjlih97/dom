<?php
/**
* Модель для таблицы Контакты
*/
class Events extends ModelBase
{
	/**
	 * Инит функция в ней :
	 *   Создается связь с таблицей альбомов(hasOne)
	 */
	public function initialize()
	{
		// Тикет пользователя
		$this->hasOne('albom_id', 'Alboms', 'id', [
			'alias'  => 'albom'
		]);
	}

	/**
	 * Функция для преобразования dateTime в дату формата день.месяц.год
	 * @return string Дата новости в формате день.месяц.год
	 */
	public function getDate()
	{
		$unixTime = strtotime($this->date);
		$date     = date('d.m.Y', $unixTime);
		return $date;
	}

	/**
	 * Функция для генирации детальной страницы новости
	 * @return string url до детальной страницы новости
	 */
	public function getUrl()
	{
		return "/events/{$this->id}/";
	}

	/**
	 * Функция для получения нужного оригинального разрешения картинки
	 * @return string        Адрес изображения
	 */
	public function getPreview()
	{
		if(!$this->preview)
			return false;

		$image = json_decode($this->preview, true)[0]['path'];
		return $image;
	}
}