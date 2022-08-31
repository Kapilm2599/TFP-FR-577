#!/bin/bash -x
isPartTime=1
isFullTime=2
maxHrsInMonth=4
EmpRatePerHour=20
NumWorkingDays=20

totalEmpHrs=0
totalworkingDays=0

declare -a dailyWage;

function getWorkingHours(){
	case $1 in
	$isFullTime)
	workHours=8 ;;
	$isPartTime)
	workHours=4 ;;
	*)
	workHours=0 ;;
	esac
	echo $workHours
}
 function getEmpWage()
{
	local empHrs=$1
	echo $(( $empHrs * $EmpRatePerHour ))
}
while [[ $totalWorkingHours -lt $maxHrsInMonth &&
	 $totalWorkingDays -lt $NumWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkingHours=$(( $totalWorkingHours + $workHours ))
	dailyWage[$totalWorkingDays]=$( getEmpWage $workHours )
	dailyWage[$totalWorkingDays]="$( getEmpWage $workHours )"
done
	totalSalary=$(( $totalWorkingHours * $EmpRatePerHour))
	echo ${dailyWage[@]}
