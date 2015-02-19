#!/bin/bash

devices=(
	"ff:5e:bf:44:d6:6f" 
	"e9:4c:5c:39:80:b8" 
	"e1:05:d3:d7:d9:81"
	"cb:ce:0c:80:4f:c5"
	)

ifile=rssi.log
tmpfile=rssi.log.tmp
cp $ifile $tmpfile

count=0
for i in ${devices[@]}; do
	sed -i "s|${i}|${count}|g" $tmpfile
	#echo "cat $tmpfile | grep ${i} | cut -f2 > log${count}.txt"
	count=$(( $count + 1 ))
done

sed -i "/:/d" $tmpfile

head $tmpfile
