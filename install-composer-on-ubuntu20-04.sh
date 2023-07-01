#!/bin/bash

echo "UPDATING SERVER PACKAGE MANAGER"
sudo apt update

echo "INSTALLING DEPENDENCIES (php-cli, unzip)"
sudo apt install php-cli unzip -y

echo "RETRIEVING THE COMPOSER INSTALLER USING curl"
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php

echo "USING curl, FETCH THE LATEST SIGNATURE AND STORE IT IN A SHELL VARIABLE"
HASH=`curl -sS https://composer.github.io/installer.sig`

echo "USING PHP CODE TO VERIFY THAT THE INSTALLATION SCRIPT IS SAFE TO RUN"
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

echo "DOWNLOADING and INSTALLING COMPOSER as a SYSTEM-WIDE COMMAND NAMED COMPOSER under /USR/LOCAL/BIN"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer -y

echo "VERIFYING SUCCESSFUL INSTALLATION of COMPOSER"
composer