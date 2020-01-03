#!/bin/bash

cd `pwd`/vendor/jesgs/wordpress-dev/

cp index.php ../../../index.php
cp .env.example ../../../.env.example
cp php.ini ../../../php.ini
cp phpinfo.php ../../../phpinfo.php
cp wp-config.php ../../../wp-config.php