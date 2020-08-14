#!/bin/bash -x 

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

echo "${!dictionary[@]}"
echo "${dictionary[@]}"

#created array and store dictionary value in array
declare -A array
count=0
for key in ${!dictionary[@]};
do
	array[((count++))]=${dictionary[$key]}
	echo -e "${array[@]}"
done
