#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

printf "Running tests against python2.7\n"
docker-compose run --rm test1
status=$?

docker-compose down

printf $status
