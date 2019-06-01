<?php

require 'vendor/autoload.php';

use Doctrine\DBAL\Tools\Console\Helper\ConnectionHelper;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Tools\Console\Helper\EntityManagerHelper;
use Doctrine\ORM\Tools\Setup;
use Dotenv\Dotenv;
use Symfony\Component\Console\Helper\HelperSet;

$envConfig = Dotenv::create(__DIR__ . '/environment');
$envConfig->load();

$isDevMode = 'yes' !== strtolower(getenv('IS_PRODUCTION'));

$paths = [__DIR__ . '/src/Infrastructure/Doctrine/Entities'];
$dbParams = [
    'dbname' => getenv('DB_NAME'),
    'host' => getenv('DB_HOST'),
    'port' => getenv('DB_PORT'),
    'user' => getenv('DB_USER'),
    'password' => getenv('DB_PASSWORD'),
    'driver' => getenv('DB_DRIVER'),
];
$config = Setup::createAnnotationMetadataConfiguration($paths, $isDevMode);

$entityManager = EntityManager::create($dbParams, $config);

return new HelperSet([
    'em' => new EntityManagerHelper($entityManager),
    'db' => new ConnectionHelper($entityManager->getConnection()),
]);
