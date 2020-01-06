WordPress Dev Environment
---

Creates a basic WordPress development environment using Composer.

## Requirements

* Vagrant
* Virtualbox (or other virtualization software supported by Vagrant)
* Composer
* PHP 7.1 or newer installed on host machine

More on [Laravel Homestead](https://laravel.com/docs/5.7/homestead).

Note: The newest version of Homestead comes with PHP 7.4 enabled by default. While WordPress will work with
PHP 7.4, you will see a number of deprecation notices. To fix, it's easier to set the default PHP version back
to 7.0–7.2.

Example:
```yaml
# sites section in Homestead.yml
sites:
    -
        php: "7.0"
```

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
