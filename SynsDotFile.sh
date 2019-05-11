#!/bin/bash

INSTALLDIR=${1:-$HOME}

# TODO: Run this is first time clone 
#${git submodule update --init --recursive}

for file in $(ls -a  ./) ; do
	case $file in 
		.|..|.git|README.md|SynsDotFile.sh)
			continue
			;;
	esac

	$(cp -r $file $INSTALLDIR)

done 

