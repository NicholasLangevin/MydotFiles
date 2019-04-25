#!/bin/bash

INSTALLDIR=${1:-$HOME}

for file in $(ls -a  ./) ; do
	case $file in 
		.|..|.git|README.md|SynsDotFile.sh)
			continue
			;;
	esac

	$(cp -r $file $INSTALLDIR)

done 

