#!/bin/bash

sudo apt update && sudo apt install -y apache2
sudo chmod -R 777 /var/www/html

echo "Hello World from $(hostname)" > /var/www/html/index.html