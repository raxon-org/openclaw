#!/bin/sh
echo "TERM=xterm-256color" >> ~/.bashrc
echo "mkdir -p /Application/Bin" >> ~/.bashrc
echo "composer install -n" >> ~/.bashrc
echo "cp /Application/vendor/raxon/framework/Bin/Raxon.php /Application/Bin/Raxon.php" >> ~/.bashrc
echo "php /Application/Bin/Raxon.php bin app" >> ~/.bashrc
echo "app install raxon/boot -skip=cache-clear" >> ~/.bashrc
echo "app install raxon/ollama" >> ~/.bashrc
echo "chown root:root /Application/start.sh" >> ~/.bashrc
echo "chown root:root /Application/enter.sh" >> ~/.bashrc
echo "chown root:root /Application/install.dev.sh" >> ~/.bashrc
echo "chown root:root /Application/install.prod.sh" >> ~/.bashrc
echo "chown root:root /Application/reinstall.dev.sh" >> ~/.bashrc
echo "chown root:root /Application/reinstall.prod.sh" >> ~/.bashrc
echo "app info all" >> ~/.bashrc
