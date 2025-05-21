<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');
$routes->group('api', function($routes) {
    $routes->get('temples', 'TempleController::index');
    $routes->get('temples/(:num)', 'TempleController::show/$1');
});

