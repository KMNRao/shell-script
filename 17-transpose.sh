#!/bin/bash
file="file1.txt"
name=()
ages=()
while IFS= read -r line; 
do
 words=($line)
 name+=(${words[0]})
 ages+=(${words[1]})
done <"$file"

echo "${name[]}"
echo "${ages[]}"