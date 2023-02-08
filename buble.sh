#!/bin/bash
read -p "input a arr: " n
read -a a
for i in ${a[@]}; do
    [[ $i =~ ^[0-9]+$ ]] || exit 1
done

n=${#a[@]}
echo ${a[@]}

for((i=1;i<n;++i)); do
    for((j=0;j<$[n-i];++j)); do
        if [ ${a[$j]} -lt ${a[$[j+1]]} ]; then
	    tmp=${a[$j]}
	    a[$j]=${a[$[j+1]]}
	    a[$[j+1]]=$tmp
	fi
    done
done

echo ${a[@]}

