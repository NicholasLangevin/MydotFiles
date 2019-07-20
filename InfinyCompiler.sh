#!/bin/bash

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

includeFile=true
isCompileName=false

# The first argument is the file to compile 
if [[ -z  "${1}1" ]]; then 
	echo A file name is needed as first argument
	includeFile=false
elif [[ ! -e "${1}" ]]; then 
	echo First argument is not a existing file 
	includeFile=false
else
	FILE=${1}
	shift
fi

# Load the define user parameters
while [[ ${#} > 0 ]]; do

	# Loop for optionnal argument
	case "${1}" in 

		-n|--name)
			if [[ -z "${2}" ]]; then 
					echo A compile name is needed
			else
					isCompileName=true
                    newCompileName=${2}
			fi
			shift 
			;;
		
		--help)
			print_help
			;;					

		-*)
			echo "Unknow options: ${1}"
			echo "Use --help to diplay all options"
			exit
			;;
		*)
			# No more parameters
			break
			;;
						
	esac
	shift
		
done 

# Exist the file of no file to compile 
if [[ ${includeFile} == false ]]; then 
	exit 
fi

# Extract filename and extention
filename="${FILE%.*}"
extention="${FILE##*.}"

# If not compile name specifie, give the same name as FILE
if [[ ${isCompileName} == true ]]; then 
	compileName=${newCompileName}
else 
    compileName=${filename} 
fi

# Detect what is the file to compile
case "${extention}" in

	py)
        clear
	    python ${FILE}
		;;

	tex)
        pdflatex ${FILE}
        # Clean compile file
        for name in $(ls ./ | grep -G ${filename}.); do
            case ${name} in
                "${filename}.tex"|"${filename}.pdf")
                    continue
                    ;;
            esac
            $(rm ./${name})
        done
		;;

	c)
		echo "C file"
		;;

	md)
		# $(pandoc $FILE --latex-engine=pdflatex -o $filename)
        pandoc ${FILE} -o ${filename}.pdf
		;;

	Rmd)
		echo "Rmarkdown file"
		;;

	Rnw)
		echo "Sweave file"
		;;
esac

echo "------------------------------------"
echo "OUTPUT NAME FILE: $compileName"
echo "------------------------------------"
