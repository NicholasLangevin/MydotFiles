#!/bin/bash

INSTALLDIR=${1:-$HOME}

for file in $(ls -a  ~/MydotFiles) ; do
	case $file in 
		.|..|.git|README.md|SynsDotFile.sh)
			continue
			;;
	esac

	$(cp -r ~/MydotFiles/$file $INSTALLDIR)

done 

echo "All file has been correctly copied"
