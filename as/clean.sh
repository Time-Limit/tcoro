#!/bin/bash

IFS="
"

for line in `ls -al ./ | grep "^-"`;do
    fileName=`echo ${line} | awk '{print $NF;}' | grep "\.\(sh\|s\|cpp\|h\)$" -v | grep Makefile -v | grep "^\." -v`;
    if [ "x"${fileName} != "x" ];then
        echo ${fileName}
        rm ${fileName}
    fi
done
