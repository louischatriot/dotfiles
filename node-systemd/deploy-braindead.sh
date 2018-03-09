#!/bin/bash

NAME="Project"
PROJECTDIR=/home/louis/deploy/project

echo "Starting $NAME as `whoami`"

cd $PROJECTDIR

exec node index.js

