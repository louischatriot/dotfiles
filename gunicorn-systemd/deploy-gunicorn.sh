#!/bin/bash

# Bash script to manage Gunicorn launching a WSGI app

# If we want to use a socket to communicate use this kind of variable and parameter
#SOCKFILE=/webapps/my_app/run/gunicorn.sock  # we will communicte using this unix socket
    #--bind=unix:$SOCKFILE \



NAME="project_name"
WORKINGDIR=/home/louis/deploy/project
USER=louis
GROUP=louis
NUM_WORKERS=3
PORT=1221

echo "Starting $NAME as `whoami`"

# Activate the virtual environment
cd $WORKINGDIR
source env/bin/activate

# Export environment variables here for readability
export PROJECT_ENV=prod

# Programs meant to be run under supervisor should not daemonize themselves (do not use --daemon)
exec gunicorn main:api \
    --name $NAME \
    --workers $NUM_WORKERS \
    --user=$USER --group=$GROUP \
    --bind=localhost:$PORT \
    #--log-level=debug \
    #--log-file=-
