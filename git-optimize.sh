#!/bin/sh

# Edit an uncomment if your git binaries are in some non-standard location
#PATH="$PATH:/path/to/bin"

flags=""
case $1 in
	--aggr*|-a) flags="--aggressive"
   	shift 
	;;
esac

[ ! -d $1 ] && exit 1

cd $1
GIT_DIR=`pwd`
git-gc $flags
