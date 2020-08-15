#!/bin/bash  

echo "computes different arithmetic expression"

#input from user
read -p "enter number:" a
read -p "enter number:" b
read -p "enter number:" c

#calculate expression
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b)) 
result4=$(($a%$b+$c))

#created dictionary

declare -A dictionary
dictionary[1]=$result1
dictionary[2]=$result2
dictionary[3]=$result3
dictionary[4]=$result4

echo "The Dictionary contains key   :${!dictionary[@]}"
echo "The Dictionary contains values:${dictionary[@]}"

#created array and store dictionary value in array
declare -a array
count=0
for key in ${dictionary[@]}
do
	array[count++]=$key
done
echo "The Array contains Element: ${array[@]}"

#sorted array in descending order
for index in ${!array[@]}
do
	for count in ${!array[@]}
	do
		if [[ ${array[$index]} -gt ${array[$count]} ]]
		then
			temp=${array[$index]}
			array[$index]=${array[$count]}
			array[$count]=$temp
		fi
	done
done
echo "Results in Descending order:${array[@]}"
