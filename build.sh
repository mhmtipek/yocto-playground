#!/bin/bash

chmod g+w build

docker build --build-arg GID=$(id -g) --tag "yocto-playground" .
