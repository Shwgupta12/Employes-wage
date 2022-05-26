#!/bin/bash -x

empRatePerHr=200;
isPartTime=1;
isFullTime=2;
workingDays=20;

for (( day=1; day<=$workingDays; day++ ))
do

empcheck=$((RANDOM%3));

case $empcheck in
$isFullTime)
                empHrs=8;;
$isPartTime)
                empHrs=4;;
*)
                empHrs=0;;

esac

salary=$(( $empHrs * $empRatePerHr ));

done

echo "Employee has earned $salary in a month"
