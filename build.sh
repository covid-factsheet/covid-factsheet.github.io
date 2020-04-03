#!/bin/sh -e

if [ -f .gitignore ] ; then
    echo "Not in repo base"
    exit 2
fi

debug () {
    echo "$1"
}

debug "copy" && cp ~/Downloads/debug.tar.gz .
debug "backup" && mv ~/Downloads/debug.tar.gz \
    "/tmp/debug.$(date +'%FT%T').tar.gz"

debug "untar" && tar -zxf debug.tar.gz
debug "mv extracted dir" && cp -r debug/* .
debug "cleanup" && rm -rf debug/ && rm debug.tar.gz
