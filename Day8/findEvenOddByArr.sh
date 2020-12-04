#!/bin/bash 

read -p "Enter length for the array before inserting elements:" n

for (( i=0;i<n;i++ ))
do
	read -p "Enter the number:" arr[$i]
done

echo "All array elements" ${arr[@]}
#arr1=(23 3 45 10 5)

for (( i=n;i>=0;i-- ))
do
	echo "reverse order" ${arr[i]}
done

evenSum=0
oddSum=0

for numb in ${arr[@]}
do
	if [ $[numb%2] -eq 0 ]
	then
		evenSum=$(($evenSum+$numb))
	else
		oddSum=$(($oddSum+$numb))
	fi
done

echo "The sum of all even numbers:" $evenSum
echo "The sum of all odd numbers:" $oddSum
