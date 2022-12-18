#!/usr/bin/env bash



writefile=$1;
writestr=$2;



if [ ! -z "$writefile" ]; then

    if [ ! -z "$writestr" ]; then
	$(mkdir -p "${writefile%/*}");
	echo $writestr > $writefile;

    else
	echo "Could not create the file.";
        exit 1;
    fi
    
else
    echo "no file name specified. $writefile"
    exit 1;
fi
