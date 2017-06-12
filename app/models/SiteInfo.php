<?php
/**
* Модель для таблицы Информации о сайте
*/
class SiteInfo extends ModelBase
{
	/**
	 * Функция для получения логотипа
	 * @return string        Адрес изображения
	 */
	public function getLogo()
	{
		if(!$this->logo)
			return false;

		$image = json_decode($this->logo, true)[0]['path'];
		return $image;
	}
}