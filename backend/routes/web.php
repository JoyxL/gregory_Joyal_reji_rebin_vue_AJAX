<?php

$router->get('/api/games', 'GameController@index');
$router->get('/api/games/{id}', 'GameController@show');
