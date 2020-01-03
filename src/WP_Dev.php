<?php


namespace JesGs;

use Composer\Script\Event;
use Composer\Installer\PackageEvent;


class WP_Dev
{
    public static function postInstall(Event $event)
    {
        copy('vendor/jesgs/wordpress-dev/index.php', 'index.php');
    }
}