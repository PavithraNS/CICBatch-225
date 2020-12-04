#!/bin/bash -x

randomCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20

if [ $isFullTime -eq $randomCheck ]
then
	numOfWorkingHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
	numOfWorkingHrs=4
else
	numOfWorkingHrs=0
fi

salary=$(( $ratePerHr*$numOfWorkingHrs ))
echo "Employee Wage:" $salary
