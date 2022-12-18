#!/usr/bin/env bash


filesdir=$1;
searchstr=$2;

cwd=$(pwd);

if [ -d "$filesdir" ]; then
    cd $filesdir;
else
    echo "invalid directory. $filesdir";
    exit 1;
fi

if [ ! -z "$searchstr" -a "$searchstr"!=" " ]; then
    x=$(grep -l "$searchstr" * | wc -l);
    y=$(grep -o -i $searchstr $filesdir/* | wc -l);
else
    echo "invalid string to search for. $searchstr";
    exit 1;
fi

echo "The number of files are $x and the number of matching lines are $y"
