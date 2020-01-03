WordPress Dev Environment
---

Creates a basic WordPress development environment using Composer.

## Requirements

* Vagrant
* Virtualbox (or other virtualization software supported by Vagrant)
* Composer
* PHP 7.1 or newer installed on host machine

More on [Laravel Homestead](https://laravel.com/docs/5.7/homestead).

## Installation
Create a `composer.json` in your root directory, and add the following lines:
```json
{
    "repositories": [
        {
            "type": "composer",
            "url": "https://wpackagist.org"
        },
        {
            "type": "vcs",
            "url": "https://github.com/jesgs-interactive/wordpress-dev"
        }
    ],

    "require": {
        "jesgs/wordpress-dev": "dev-master"
    },

    "require-dev": {
        "wpackagist-plugin/debug-bar": "1.0",
        "wpackagist-plugin/debug-bar-actions-and-filters-addon": "1.5.4",
        "wpackagist-plugin/debug-bar-slow-actions": "0.8.4"        
    },

    "scripts": {
        "post-update-cmd": [
            "sh ./vendor/jesgs/wordpress-dev/post-install.sh"
        ]
    },

    "extra": {
        "wordpress-install-dir": "core",
        "installer-paths": {
            "content/mu-plugins/{$name}/": [
                "type:wordpress-muplugin"
            ],
            "content/plugins/{$name}/": [
                "type:wordpress-plugin"
            ],
            "content/themes/{$name}/": [
                "type:wordpress-theme"
            ]
        }
    }
}
```
