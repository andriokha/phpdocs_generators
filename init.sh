#!/bin/bash

# Bring the different generators.
wget -P doctum https://doctum.long-term.support/releases/latest/doctum.phar
wget -P phpdox http://phpdox.de/releases/phpdox.phar
wget -P phpdoc https://phpdoc.org/phpDocumentor.phar

# Bring the different repos.
rm -rf repos/*
cd repos
git clone https://git.drupalcode.org/project/drupal.git
git clone https://git.drupalcode.org/project/webform.git
git clone https://git.drupalcode.org/project/gin.git
