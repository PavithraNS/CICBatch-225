#!/bin/bash -x

randomCheck=$((RANDOM%2))
isPresent=1
salary=0

if [ $isPresent -eq $randomCheck ]
then
	ratePerHr=20
	numOfWorkingHrs=8
	salary=$(( $ratePerHr*$numOfWorkingHrs ))	
fi
echo "Employee Wage:" $salary
