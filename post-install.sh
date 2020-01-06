#!/bin/bash
if [ ! -f "wp-config.php" ]; then
    rootPwd=`pwd`

    cd `pwd`/vendor/jesgs/wordpress-dev/

    cp index.php ../../../index.php
    cp .env.example ../../../.env.example
    cp php.ini ../../../php.ini
    cp phpinfo.php ../../../phpinfo.php
    cp wp-config.php ../../../wp-config.php

    cd ../../bin/
    echo "Create Homestead environment"
    ./homestead make
fi