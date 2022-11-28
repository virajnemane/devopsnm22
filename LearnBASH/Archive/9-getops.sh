#!/bin/bash

usage() {
        echo "$0 -C <tar|zip> -S <source path> -D <destination path>"
}

while getopts 'C:S:D:' opt
do
        case $opt in
                C) export COMMAND=$OPTARG ;;
                S) export SOURCE=$OPTARG ;;
                D) export DEST=$OPTARG ;;
                \?)usage ;;
        esac
done

if [ ! $COMMAND == '' ]
then
        echo "COMMAND is $COMMAND"
fi
if [ ! $SOURCE == '' ]
then
        echo "SOURCE is $SOURCE"
fi
if [ ! $DEST == '' ]
then
        echo "DEST is $DEST"
fi
