#!/bin/bash

# Bring the different generators.
rm doctum/doctum.phar phpdox/*.phar phpdoc/*.phar
# wget -P doctum https://doctum.long-term.support/releases/latest/doctum.phar
wget -P doctum https://doctum.long-term.support/releases/5-dev/doctum.phar
wget -P phpdox http://phpdox.de/releases/phpdox.phar
# wget -P phpdoc https://phpdoc.org/phpDocumentor.phar  # Sometimes this fails
wget -P phpdoc https://github.com/phpDocumentor/phpDocumentor/releases/download/v3.1.2/phpDocumentor.phar

# Bring the different repos.
rm -rf repos/drupal repos/gin repos/webform
cd repos
git clone https://git.drupalcode.org/project/drupal.git
git clone https://git.drupalcode.org/project/webform.git
git clone https://git.drupalcode.org/project/gin.git

rm -rf drupal-branches
mkdir drupal-branches
cd drupal-branches
git clone  --branch '7.x' https://git.drupalcode.org/project/drupal.git 7.x
git clone  --branch '9.3.x' https://git.drupalcode.org/project/drupal.git 9.3.x
