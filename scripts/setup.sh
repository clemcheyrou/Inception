#!/bin/bash

sudo apt-get update

apt-get update
apt-get install -y docker.io
apt-get install -y make
apt-get install -y docker-compose

usermod -aG docker vagrant

sudo apt-get clean