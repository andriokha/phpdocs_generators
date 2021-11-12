#!/bin/bash

cd doctum
rm -rf build cache
php -d memory_limit=-1 doctum-custom.phar update webform.php
php -d memory_limit=-1 doctum-custom.phar update drupal.php
# php -d memory_limit=-1 doctum-custom.phar update gin.php
cd ..

# cd phpdox
# rm -rf build
# # php -d memory_limit=-1 phpdox.phar -f webform.xml
# php -d memory_limit=-1 phpdox.phar -f drupal.xml
# php -d memory_limit=-1 phpdox.phar -f gin.xml
# cd ..

cd phpdoc
rm -rf build cache
php -d memory_limit=-1 phpDocumentor.phar -c webform.xml --sourcecode
php -d memory_limit=-1 phpDocumentor.phar -c drupal7.xml --sourcecode
php -d memory_limit=-1 phpDocumentor.phar -c drupal9.xml --sourcecode
# php -d memory_limit=-1 phpDocumentor.phar -c gin.xml --sourcecode
cd ..
