#!/bin/bash

docker run -it --volume $PWD/Playground:/opt/yocto/Playground --volume $PWD/poky:/opt/yocto/poky yocto-playground
