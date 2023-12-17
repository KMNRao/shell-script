#!/bin/bash

file_path="home/edw/desktop/test.txt"

#awk "Begin{$C1=0} // {$C1++} end {"print number of lines: " ,$C1} 
#awk "Begin{$C1=0} // {$C1++} end {"print of words: ",$C1} RS="[[:space:]]" 
number_of_lines="wc --lines < $file_path"
number_of_words="wc --word < $file_path"
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"
