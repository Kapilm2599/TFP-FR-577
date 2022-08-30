#!/bin/bash -x

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

PartTime=1;
FullTime=2;
TotalSalary=0;
EmpRatePerHr=20;
NumOfWorkingDays=20;

for (( day=1; day=$NumOfWorkingDays; day++ ))
for (( day=1; day<=$numWorkingDays; day++ ))
do
   RandomEmpCheck=$((RANDOM%3));
	case $RandomEmpCheck in
		$FullTime)
			EmpHr=8
                        ;;

		$PartTime)
		        EmpHr=4
		        ;;
		*)
			EmpHr=0
		        ;;
   empCheck=$((RANDOM%3));
    case $empCheck in
           $isFullTime)
                 empHrs=8
                 ;;
           $isPartTime)
                 empHrs=4
                 ;;
           *)
                 empHrs=0
                 ;;
esac
		Salary=$(($EmpRatePerHr*$EmpHr));
		TotalSalary=$(($TotalSalary+$Salary));
      salary=$(($empHrs*$empRatePerHr));
      totalSalary=$(($totalSalary+$salary));
done
