<?php

use Phalcon\Mvc\User\Component;

/**
 * Elements
 *
 * Helps to build UI elements for the application
 */
class Elements extends Component
{
	public function getNewsYears()
	{
		$news = News::find(['order' => 'date desc', 'group' => 'date']);
		$years = [];
		
		foreach($news as $newsElement)
			$years[] = $newsElement->getYear(); 

		return $years;

	}

	public function thisYear()
	{
		return date('Y');
	}
}
