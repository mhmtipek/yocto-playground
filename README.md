# yocto-playground
Learning yocto and this repo is playground for me. Build environment is inside a docker container. Playground directory contains custom layers. 

## About scripts
### build.sh
Builds Dockerfile

### run.sh
Runs Docker container

### attach.sh
Opens a new terminal for currently running container

## Step by step
1. Don't forget to initialize submodules 'git submodule update --init'
2. Run './build.sh'
3. Run './run.sh'
4. In this step, you should be inside docker. Run 'source poky/oe-init-build-env'
5. You should be inside build directory. Run 'bitbake core-image-minimal' This step will take long time because bitbake will create an image.
6. Run 'runqemu core-image-minimal nographic slirp'

## Todo
1. Describe how to add layers
