<?php
/**
* Модель для таблицы Воспитанники
*/
class Inmates extends ModelBase
{
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

	/**
	 * Функция для преобразования dateTime в дату формата день.месяц.год
	 * @return string Дата новости в формате день.месяц.год
	 */
	public function getDate()
	{
		$unixTime = strtotime($this->date_of_birth);
		$date     = date('d.m.Y', $unixTime);
		return $date;
	}
}