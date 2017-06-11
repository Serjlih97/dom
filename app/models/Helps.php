<?php
/**
* Модель для таблицы Контакты
*/
class Helps extends ModelBase
{
	/**
	 * Функция для преобразования dateTime в дату формата день.месяц.год
	 * @return string Дата новости в формате день.месяц.год
	 */
	public function getDate()
	{
		$unixTime = strtotime($this->date_end);
		$date     = date('d.m.Y', $unixTime);
		return $date;
	}

	/**
	 * Функция для генирации детальной страницы новости
	 * @return string url до детальной страницы новости
	 */
	public function getUrl()
	{
		return "/help/{$this->id}/";
	}

	/**
	 * Функция для получения нужного оригинального разрешения картинки
	 * @return string        Адрес изображения
	 */
	public function getPreview()
	{
		if(!$this->photo)
			return false;

		$image = json_decode($this->photo, true)[0]['path'];
		return $image;
	}
}