#!/bin/bash

asFileName=$1;

outFileName=`echo ${asFileName} | awk -F '.' '{print $1".out"}'`;
binFileName=`echo ${asFileName} | awk -F '.' '{print $1}'`;

if [ "x"${asFileName} == "x" ];then
    echo "wrong filename";
fi

if [ "x"${outFileName} == "x.done" ];then
    echo "wrong output filename";
fi

if [ "x"${binFileName} == "x" ];then
    echo "wrong binary filename";
fi

as --32 -gstabs ${asFileName} -o ${outFileName};
ld -melf_i386 ${outFileName} -o ${binFileName};
