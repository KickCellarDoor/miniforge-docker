#!/bin/bash

service ssh start
chown -R dev /home/dev
chmod 600 /home/dev/.ssh/id_rsa

su - dev
source /home/dev/.bashrc
cd /home/dev
bash