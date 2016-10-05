#!/bin/bash

adduser --disabled-password --quiet dev
usermod -aG sudo dev
mkdir /home/dev/.ssh
cp ~/.ssh/authorized_keys /home/dev/.ssh/
chown -R dev:dev /home/dev/
