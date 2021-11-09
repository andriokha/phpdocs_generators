# PHPDOCS GENERATORS

Evaluate different tools to create documentation based on code.

## Set up

Initial set up: `./bring-repos.sh`

## Doctum

[https://github.com/code-lts/doctum](https://github.com/code-lts/doctum)

```
cd doctum
php -d memory_limit=-1 doctum.phar update webform.php
php -d memory_limit=-1 doctum.phar update drupal.php
php -d memory_limit=-1 doctum.phar update gin.php
```

Then see the `doctum/build` folders which contain the generated documentation.

**Pros**
* Easy to use and automate
* Nice looking default theme and easy to subtheme
* Can switch branches and generates all different versions in one go
* Search functionality built-in

**Cons**
* Not playing well with programmatic (not object oriented) code. ie: functions on *.module files not documented or not linked
* Everything should be on a namespace
* No source code view
* Fails on large codebases


## PHPDOX

[https://phpdox.net/](https://phpdox.net/)

```
cd phpdox
php -d memory_limit=-1 phpdox.phar -f webform.xml
php -d memory_limit=-1 phpdox.phar -f drupal.xml
php -d memory_limit=-1 phpdox.phar -f gin.xml
```

Then see the `phpdox/build` folders which contain the generated documentation.

**Pros**
* Easy to use and automate
* Full source code view

**Cons**
* Not playing well with programmatic (not object oriented) code. ie: functions on *.module files not documented or not linked
* Default styling not great
* Limited annotations support
* Does not understand version control so we would need to iterate through branches, etc. via a script
* Fails on large codebases


## PHPDOC

[https://www.phpdoc.org/](https://www.phpdoc.org/)

```
cd phpdoc

```

Then see the `phpdoc/build` folders which contain the generated documentation.

**Pros**
* 
* 

**Cons**
* 
*
