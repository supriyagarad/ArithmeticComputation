#!/bin/bash -x 

echo "computes different arithmetic expression"

read -p "enter number:" a
read -p "enter number:" b
read -p "enter number:" c

#calculate expression
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b)) 
result4=$(($a%$b+$c))
