# PHPDOCS GENERATORS

Evaluate different tools to create documentation based on code.

## Set up

Use the following [ahoy](https://github.com/ahoy-cli/ahoy) commands to do:
* Initial set up: `ahoy init`
* Generate documentation: `ahoy generate`
* Open documentation: `ahoy open`
* Clean up: `ahoy clean`

Find more details in each section:
* [Doctum](#doctum)
* [Phpdox](#phpdox)
* [PhpDocumentor](#phpdoc)


## Doctum

[https://github.com/code-lts/doctum](https://github.com/code-lts/doctum)

```
cd doctum
php -d memory_limit=-1 doctum.phar update webform.php
php -d memory_limit=-1 doctum.phar update drupal.php
php -d memory_limit=-1 doctum.phar update gin.php
```

Then see the `doctum/build` folders which contain the generated documentation.

![Doctum output](/images/doctum.png)

**Pros**
* Easy to use and automate
* Nice looking default theme and easy to subtheme
* Can switch branches and generates all different versions in one go
* Search functionality built-in

**Cons**
* Not playing well with programmatic (not object oriented) code. ie: functions on *.module files not documented or not linked
** Everything should be on a namespace

* Fails on large codebases, sometimes.
* No paginated output


## PHPDOX

[https://phpdox.net/](https://phpdox.net/)

```
cd phpdox
php -d memory_limit=-1 phpdox.phar -f webform.xml
php -d memory_limit=-1 phpdox.phar -f drupal.xml
php -d memory_limit=-1 phpdox.phar -f gin.xml
```

Then see the `phpdox/build` folders which contain the generated documentation.
If you need to generate documentation for a specific branch you need to navigate to the folder and checkout the branch.

![Phpdox output](/images/phpdox.png)

**Pros**
* Easy to use and automate
* Full source code view

**Cons**
* Not playing well with programmatic (not object oriented) code. ie: functions on *.module files not documented or not linked
* Default styling not great
* Limited annotations support
* Does not understand version control so we would need to iterate through branches, etc. via a script
* Fails on large codebases


## PHPDOCUMENTOR

[https://www.phpdoc.org/](https://www.phpdoc.org/)

```
cd phpdoc
php -d memory_limit=-1 phpDocumentor.phar -c webform.xml --sourcecode
php -d memory_limit=-1 phpDocumentor.phar -c drupal.xml --sourcecode
php -d memory_limit=-1 phpDocumentor.phar -c gin.xml --sourcecode
```

Then see the `phpdoc/build` folders which contain the generated documentation.
If you want the code preview to work you'd need to open the project with apache, nginx or php built in server: `php -S localhost:8888`.
If you need to generate documentation for a specific branch you need to navigate to the folder and checkout the branch.

![Phpdoc output](/images/phpdoc.png)

**Pros**
* Easy to use and automate
* Nice looking and easy to theme
* Built in search
* Great tag support
* Easy to automate
* Plays well with programmatic code
* Allows for additional guides to go alongside the generated code

**Cons**
* Default navigation could be improved
* Large files in size
* It takes really long for large codebases (ie: D9)
* No branch support
* No paginated output
* Other issues:
** It renders comments as they are, so sometimes it breaks the html of the page. Won't fix: https://github.com/phpDocumentor/phpDocumentor/issues/639.
** No support for some tags: @code @see (temperamental)
