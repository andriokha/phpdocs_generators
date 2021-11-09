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

## PHPDOC

[https://www.phpdoc.org/](https://www.phpdoc.org/)

TODO


## PHPDOX

[https://phpdox.net/](https://phpdox.net/)

TODO
