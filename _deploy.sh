#!/bin/bash

if [ "$1" = "local" ]; then
    DEPLOY_DIR=./_site  # test deploy
elif [ "$1" = "deploy" ]; then
    DEPLOY_DIR=~/public_html/jekyll_site  # actual deploy
    JEKYLL_ENV=production
else
    echo "Requires 'local' or 'deploy' command"
    exit
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR && git pull && bundle exec jekyll build -I -d $DEPLOY_DIR
