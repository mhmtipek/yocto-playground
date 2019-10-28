#!/bin/bash

docker run -it --volume $PWD/layers:/opt/yocto/layers --volume $PWD/poky:/opt/yocto/poky yocto-playground
