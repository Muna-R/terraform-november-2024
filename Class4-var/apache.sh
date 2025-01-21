#/bin/bash

sudo apt update
sudo apt install httpd -yu
sudo systemctl start httpd
sudo systemctl enable httpd
