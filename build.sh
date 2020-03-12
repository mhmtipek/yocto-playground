#!/bin/bash

chmod g+w build
chmod g+w layers

docker build --build-arg GID=$(id -g) --tag "yocto-playground" .
