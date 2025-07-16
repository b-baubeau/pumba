#!/bin/bash

THIS_DIR="$(dirname "$(readlink -f "$BASH_SOURCE")")"

pumba() { 
    (cd $THIS_DIR;
    sudo docker run --rm -v /var/run/docker.sock:/var/run/docker.sock pumba $@;)
}