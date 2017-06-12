<?php
$router = new \Phalcon\Mvc\Router();

$router->add(
	"/ajax/:action/:params", [
		"controller" => 'ajax',
		"action"     => 1,
		"code"       => 2
	]
);

$router->add(
	"/gallery/albom/:int/", [
		'controller' => 'gallery',
		'action'     => 'albom',
		'id'         => 1
	]
);

$router->add(
	"/news/:int/", [
		'controller' => 'news',
		'action'     => 'detail',
		'id'         => 1
	]
);

$router->add(
	"/help/:int/", [
		'controller' => 'help',
		'action'     => 'detail',
		'id'         => 1
	]
);

$router->add(
	"/events/:int/", [
		'controller' => 'events',
		'action'     => 'detail',
		'id'         => 1
	]
);

$router->handle();
return $router;
