#!/bin/bash
if [ ! -f "wp-config.php" ]; then

    cp vendor/jesgs/wordpress-dev/index.php index.php
    cp vendor/jesgs/wordpress-dev/.env.example .env.example
    cp vendor/jesgs/wordpress-dev/php.ini php.ini
    cp vendor/jesgs/wordpress-dev/phpinfo.php phpinfo.php
    cp vendor/jesgs/wordpress-dev/wp-config.php wp-config.php
    cp -rf core/themes/ content/themes/

    echo "Create Homestead environment..."
    ./homestead make
fi