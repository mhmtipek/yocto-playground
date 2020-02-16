#!/bin/bash

docker run -it --volume $PWD/layers:/opt/yocto/layers --volume $HOME/.vimrc:/home/build/.vimrc --volume $PWD/poky:/opt/yocto/poky yocto-playground

