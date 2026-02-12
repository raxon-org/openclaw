#!/bin/sh
echo "TERM=xterm-256color" >> ~/.bashrc
echo "mkdir -p /Application/Bin" >> ~/.bashrc
echo "composer install -n" >> ~/.bashrc
echo "cp /Application/vendor/raxon/framework/Bin/Raxon.php /Application/Bin/Raxon.php" >> ~/.bashrc
echo "php /Application/Bin/Raxon.php bin app" >> ~/.bashrc
echo "app install raxon/boot -skip=cache-clear" >> ~/.bashrc
echo "app info all" >> ~/.bashrc
