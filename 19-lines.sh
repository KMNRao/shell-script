#!/bin/bash

LINE1=I am learning Devops
LINE2=The tutor was Shiva
LINE3=I am practicing Devops 

awk "Begin{$LINE1=0} // {$LINE1++} end {"print number of lines: " ,$LINE1} $LINE1 $LINE2 $LINE3
awk "Begin{$LINE1=0} // {$LINE1++} end {"print of words: ",$LINE1} RS="[[:space:]]" $LINE1 $LINE2 $LINE3
