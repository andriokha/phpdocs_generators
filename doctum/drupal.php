<?php

declare(strict_types = 1);

use Doctum\Doctum;
use Doctum\Version\GitVersionCollection;
use Doctum\RemoteRepository\GitLabRemoteRepository;
use Symfony\Component\Finder\Finder;
use Doctum\Parser\Filter\TrueFilter;

$dir = __DIR__ . '/../repos/drupal';

$iterator = Finder::create()
    ->files()
    ->name('*.theme')
    ->name('*.php')
    //->name('*.install')
    ->name('*.module')
    ->name('*.inc')
    ->exclude('tests')
    ->in($dir);

$versions = GitVersionCollection::create($dir)
    ->add('7.x', '7.x branch')
    //->add('8.9.x', '8.9.x branch')
    ->add('9.3.x', '9.3.x branch');
    //->add('10.0.x', '10.0.x branch');

$doctum = new Doctum($iterator, [
    'title' => 'Drupal API',
    // 'language' => 'en',
    'theme' => 'default',
    'versions' => $versions,
    'build_dir' => __DIR__ . '/build/drupal/%version%',
    'cache_dir' => __DIR__ . '/cache/drupal/%version%',
    // 'source_dir' => dirname($dir) . '/',
    'remote_repository' => new GitLabRemoteRepository('project/drupal', $dir, 'https://git.drupalcode.org/'),
    // 'include_parent_data' => false,
    'default_opened_level' => 1,
    // Necessary to enable the opensearch.xml file generation
    // 'base_url' => 'https://apidocs.company.tld/',
    // If you have a favicon
    // 'favicon' => 'https://company.tld/favicon.ico',
    'footer_link'          => [
        'href'        => 'https://github.com/code-lts/doctum',
        'rel'         => 'noreferrer noopener',
        'target'      => '_blank',
        'before_text' => 'You can edit the configuration',
        'link_text'   => 'on this', // Required if the href key is set
        'after_text'  => 'repository',
    ],
]);
// document all methods and properties
$doctum['filter'] = function () {
    return new TrueFilter();
};

return $doctum;
