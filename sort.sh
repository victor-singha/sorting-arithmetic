#! /bin/bash
read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c
val1=$((a+b*c))
val2=$((a*b+c))
val3=$((c+a/b))
val4=$((a%b+c))
declare -A results_dict
results_dict=([0]=$val1 [1]=$val2 [2]=$val3 [3]=$val4)
