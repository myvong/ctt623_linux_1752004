#!/bin/bash

countWord()
{
    local cnt=0
    for word in $*
    do
	cnt=$(($cnt+1))
    done
    echo "$cnt"
}

showWord()
{
    local res=''
    res=$(('Cac tu co trong file: '))
    for word in $*
    do
	res+=$(($word))
    done
    echo "$res"
}

process()
{
    local fin=$1
    local fout=$2
    local str=''
    while read line; do
	str+=$line
	str+=" "
    done < $fin
    echo "$str" >> $fout
}

process inputb.txt outputb.txt
