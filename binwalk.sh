#!/bin/bash

docker run \
    --interactive \
    --rm \
    --volume "$(pwd):/workdir:Z" \
    --workdir=/workdir \
    dsirov/binwalk-cpurec:latest \
    "$@"
