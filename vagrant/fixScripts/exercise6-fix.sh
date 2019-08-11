#!/bin/bash

location=${*: -1:1}
argc=$#
argv=($@)
total_count=0
for (( i=0; i<(( argc -1 )); i++ )); do
    scp ${argv[i]} vagrant@server2:$location
    byte_count=($(wc -c < ${argv[i]}))
    total_count+=$((total_count + byte_count))
done
echo $total_count
