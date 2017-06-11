<?php
/**
* Модель для таблицы Контакты
*/
class Events extends ModelBase
{
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
		return "/help/{$this->id}/";
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