#!/bin/sh
#
# PHP
#
# This installs PHP dependencies

# Check for Composer
if test ! $(which composer)
then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi

# Install global composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install valet
if test ! $(which valet)
then
    $HOME/.composer/vendor/bin/valet install
fi

# PHP Packages
if test $(which pecl)
then
    pecl install memcached imagick
fi

