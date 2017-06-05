<?php
/**
* Модель для таблицы Новостей
*/
class News extends ModelBase
{
	/**
	 * Функция для генирации детальной страницы новости
	 * @return string url до детальной страницы новости
	 */
	public function getUrl()
	{
		return "/news/{$this->id}/";
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
	 * Функция для получения нужного размера картинка (Размеры указываються в админ понели)
	 * @param  string $size Название нужного размера изображения
	 * @return string        Адрес изображения с нужным размером
	 */
	public function getPictureSize($size = false)
	{
		if(!$this->preview)
			return false;

		$image = json_decode($this->preview, true)[0];

		if($size)
		{
			if(array_key_exists($size, $image['sizes']))
				return $image['sizes'][$size];

			return false;
		}
		else
			return array_shift($image['sizes']);
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

	/**
	 * Функция для получения асоциотивного массива всех файлов на странице
	 * @return array Ассоциотивный массив файлов
	 */
	public function getFiles()
	{
		if(!$this->files)
			return false;

		$files = json_decode($this->files, true);

		foreach($files as &$file)
			$file = (object) [
				'name' => $file['upName'],
				'path' =>$file['path']
			];

		$files = (object) $files;

		if(!$files)
			return true;

		return $files;
	}

	/**
	 * Функция для получения асоциотивного массива всех фотографий для слайдера
	 * @return array Ассоциотивный массив фотографий
	 */
	public function getPhotoSlider()
	{
		if(!$this->photo_slider)
			return false;


		$slider = json_decode($this->photo_slider, true);

		foreach($slider as &$photo)
			$photo = (object) [
				'origin' => $photo['path'],
				'small' => $photo['sizes']['small'],
				'big' => $photo['sizes']['big']
			];

		$slider = (object) $slider;

		if(!$slider)
			return false;

		return $slider;
	}

	/**
	 * Функция для получения асоциотивного массива всех Видео
	 * @return array Ассоциотивный массив видео
	 */
	public function getVideoSlider()
	{
		if(!$this->video_slider)
			return false;


		$slider = json_decode($this->video_slider, true);

		foreach($slider as &$photo)
			$photo = array_shift($photo);

		$slider = (object) $slider;

		if(!$slider)
			return false;

		return $slider;
	}
}