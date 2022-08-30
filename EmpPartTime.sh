#!/bin/bash -x

isPartTime=1;
isFullTime=2;
EmpRatePerHr=20;
RandomCheck=$((RANDOM%3));

if [ $isFullTime -eq $RandomCheck ];
then
	EmpHr=8;

elif [ $isPartTime -eq $RandomCheck ];
then
	EmpHr=4;
else
	EmpHr=0;
fi
	Salary=$(($EmpRatePerHr*$EmpHr));
