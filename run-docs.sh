#!/bin/bash

cd doctum
rm -rf build cache
php -d memory_limit=-1 doctum.phar update webform.php
php -d memory_limit=-1 doctum.phar update drupal.php
php -d memory_limit=-1 doctum.phar update gin.php
cd ..

cd phpdox
rm -rf build
php -d memory_limit=-1 phpdox.phar -f webform.xml
php -d memory_limit=-1 phpdox.phar -f drupal.xml
php -d memory_limit=-1 phpdox.phar -f gin.xml
cd ..

cd phpdoc
rm -rf build cache
php -d memory_limit=-1 phpDocumentor.phar -c webform.xml --sourcecode
php -d memory_limit=-1 phpDocumentor.phar -c drupal.xml --sourcecode
php -d memory_limit=-1 phpDocumentor.phar -c gin.xml --sourcecode
cd ..
