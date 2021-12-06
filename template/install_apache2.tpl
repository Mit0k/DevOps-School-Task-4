#!/bin/bash
# Scenario installing Apache2 Web-Server
sudo apt-get update
sudo apt-get install -y apache2
sudo ufw allow "Apache Full"
sudo systemctl enable apache2
sudo systemctl restart apache2