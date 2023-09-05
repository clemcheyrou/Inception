#!/bin/bash

sudo apt-get update

apt-get update
apt-get install -y git

git config --global user.name "ccheyrou"
git config --global user.email "ccheyrou@gmail.com"


apt-get update
apt-get install -y docker.io

usermod -aG docker vagrant

sudo apt-get clean