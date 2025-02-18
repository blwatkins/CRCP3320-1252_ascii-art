#!/bin/bash
cactus_art() {
echo "	           __							"
echo "	          /| \                                 			"
echo "        	  || |     	  					"
echo "		  || |   _         					"
echo "	          || |  | |						"
echo "	          || '--' |						"
echo "	    __    || .----'						"
echo "	   || |   || |							"
echo "	   |  '---'| |							"
echo "	   '------.| |                                  _____		"
echo "	   ((_))  || |                                 / /|\ \		"
echo "	   (o o)  || |     ( ))( ),                    | | | |          "
echo "	____\_/___||_|_____((__^_))____________________\_\|/_/__	"
echo "									"
echo " 									"
}

while getopts n: flag
do
    case "${flag}" in
        n) artName=${OPTARG};;
    esac
done

if [ -z "$artName" ]
then
    echo "FAILURE: No art name provided."
    exit 1
fi

echo "ASCII Art: $artName"

if [ "$artName" == "cactus" ]
then
    cactus_art
else
    echo "FAILURE: No such art name."
    echo "Valid art names:"
    echo "    cactus"
    exit 1
fi


