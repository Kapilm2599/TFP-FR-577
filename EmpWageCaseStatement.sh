#!/bin/bash -x

PartTime=1;
FullTime=2;
EmpRatePerHr=20;
EmpRandomCheck=$((RANDOM%3));

case $EmpRandomCheck in
	$FullTime)
	EmpHr=8
	;;
	$PartTime)
	EmpHr=4
	;;

	*)
	EmpHr=0
	;;
esac

Salary=$(($EmpRatePerHr*$EmpHr));
