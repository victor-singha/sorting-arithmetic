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
declare -a results_array
for ((index=0;index<4;index++))
do
	results_array[$index]=${results_dict[$index]}
done
for ((i=0;i<4;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if [ ${results_array[$i]} -lt ${results_array[$j]} ]
		then
			temp=${results_array[$i]}
			results_array[$i]=${results_array[$j]}
			results_array[$j]=$temp
		fi
	done
done
echo "Decending" ${results_array[@]}
for ((i=0;i<4;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if [ ${results_array[$i]} -gt ${results_array[$j]} ]
		then
			temp=${results_array[$i]}
			results_array[$i]=${results_array[$j]}
			results_array[$j]=$temp
		fi
	done
done
echo "Ascending" ${results_array[@]}
