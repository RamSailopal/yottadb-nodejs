#!/bin/bash
  #
  #
  #       AUTHOR - Raman Sailopal 
  #
  # 
  #       Script to install and then run node service gateway
  #
  #
  #
if [[ "$1" == "" ]]
then
	echo "please enter the user the Yottadb install was installed under"
	exit
fi
if [[ "$2" == "" ]]
then
        echo "please enter the directory of the mgsi repo"
        exit
fi
if [[ "$1" == "root" ]]
then
	homedir="/root"
else
	homedir="/$1"
fi
cmd()
{
       sleep 2;
       echo "do ylink^%zmgsi";
       sleep 2;
       echo "do ^%zmgsi";
       sleep 2
       echo "do start^%zmgsi(0)";
       sleep 2
       echo "H";
}
find "$homedir/.yottadb" -maxdepth 2 -mindepth 2 -type d -name "r" -exec cp "$2/yottadb/"*.m '{}' \;
cmd | {{ yinstdir }}/ydb
if ss -lnp | grep -q 7041
then
	echo "Service gateway process is running"
fi
