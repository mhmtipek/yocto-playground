#!/bin/bash

docker exec -it $(docker container ls | awk '{if ($2=="yocto-playground") print $1}') /bin/bash
