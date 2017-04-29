<?php
use \Phalcon\Mvc\Model;
/**
 * Базавая модель для наследования
 */
class ModelBase extends Model
{
	/**
	 * Функция возвращает все столбцами таблицы
	 * @return array Массив со всеми столбцами таблицы
	 */
	public function getAttributes()
	{
		$metaData = $this->getModelsMetaData();
		return $metaData->getAttributes($this);
	}
}
