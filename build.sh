#!/bin/sh -e

if [ -f .gitignore ] ; then
    echo "Not in repo base"
    exit 2
fi

debug () {
    echo "$1"
}

debug "copy" && cp ~/Downloads/projectname.tar.gz .
debug "untar" && tar -zxf projectname.tar.gz
debug "mv extracted dir" && cp -r cloud9/cv19app/* .
debug "cleanup" && rm -rf cloud9/ && rm projectname.tar.gz
