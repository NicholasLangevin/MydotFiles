#!/bin/sh set -e

print_help () {
		echo "========================================="
		echo "================= HELP =================="
		echo "========================================="
		echo "SYSNOSIS:"
		echo "	sh InfinyCompiler.sh FILE= [--name | -n] OUTNAME= "
		echo "OPTIONS:"
		echo "	-n, --name"
		echo "		Specify the name of the output compiled file"
		echo "========================================="
}

# Load the define user parameters
while [[ $# > 0 ]]; do

		INCLUDE_FILE=true
		isCompileName=false
		# The first argument is the file to compile 
		if [[ -z  "$1" ]]; then 
				echo A file name is needed as first argument
				INCLUDE_FILE=false
		elif [[ ! -e $1 ]]; then 
				echo First argument is not a existing file 
				INCLUDE_FILE=false
		else
				FILE=$1
				shift
		fi
		
		# Loop for optionnal argument
		case "$1" in 

				-n|--name)
						if [[ -z "$2" ]]; then 
								echo A compile name is needed
						else
								isCompileName=true
								compileName=$2	
						fi
						shift 
						;;
				
				--help)
						print_help
						;;					

				-*)
						echo "Unknow options: $1"
						echo "Use --help to diplay all options"
						exit
						;;
				*)
						# No more parameters
						break
						
		esac
		shift
		
done 

# Exist the file of no file to compile 
if [[ !INCLUDE_FILE ]]; then 
		echo "allo"
		exit 
fi

# Extract filename and extention
filename="${FILE%.*}"
extention="${FILE##*.}"

# If not compile name specifie, give the same name as FILE
if [[ !isCompileName ]]; then 
		compileName=$filename	
fi
echo "--"
case "$extention" in

		py)
				echo "python file"
				;;

		tex)
				echo "Latex file"
				;;

		c)
				echo "C file"
				;;

		md)
				echo "Markdown file"
				;;

		Rmd)
				echo "Rmarkdown file"

		Rmd)
				echo "Sweave file"
				;;
esac


