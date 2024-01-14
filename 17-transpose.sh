#!/bin/bash
# file="file1.txt"
# name=()
# ages=()
# while IFS= read -r line; 
# do
#  words=($line)
#  name+=(${words[0]})
#  ages+=(${words[1]})
# done <"$file"

# echo "${name[]}"
# echo "${ages[]}"

input_file="$1"
num_cols=$(head -1 "$input_file" | wc -w)
for i in $(seq 1 "$num_cols"); do
echo $(cut -d ' ' -f "$i" "$input_file")
done

cat data
name age
tanvi 8
reyan 7
junnu 6