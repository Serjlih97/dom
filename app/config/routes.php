<?php
$router = new \Phalcon\Mvc\Router();

$router->add(
	"/detail/:params", [
		"controller" => "index",
		"action"     => "detail",
		"params"     => 1,
	]
);

$router->add(
	"/ajax/:action/:params", [
		"controller" => 'ajax',
		"action"     => 1,
		"code"       => 2
	]
);
$router->add(
	"/filter/:params", [
		"controller" => 'index',
		"action"     => 'index',
		"code"       => 1
	]
);

$router->add(
	"/raiting/:params", [
		"controller" => 'raiting',
		"action"     => 'index',
		"code"       => 1
	]
);

$router->add(
	"/gallery/albom/:int/", [
		'controller' => 'gallery',
		'action'     => 'albom',
		'id'         => 1
	]
);


$router->handle();
return $router;
