#! /bin/bash

gg=$(cat /mnt/master/projects/blogging_bot/src/img.txt)

for i in $gg;do
    for j in $(find . -type f);do
        temp=$(grep $i $j)
        if [[ -n $temp ]];then
            rm -rfv "$j"
        fi
    done
done
