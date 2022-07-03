workHours ()
{
    employeeAttendance=$1
     case $employeeAttendance in 
        0)
            noOfHours=0
            ;;
        1)
            noOfHours=8
            ;;
        2)
            noOfHours=4
            ;;
    esac
    echo "$noOfHours"
}

wagePerHour=20
maximumHours=100
maximumDays=20
totalWorkingHours=0
totalWorkingDays=0
while(( totalWorkingHours < maximumHours && totalWorkingDays < maximumDays ))
do
    (( totalWorkingDays++ ))
    employeeAttendance=$(( RANDOM % 3 ))
    noOfHours=$( workHours $employeeAttendance)
    (( totalWorkingHours += noOfHours ))

done

totalSalary=$(( totalWorkingHours * wagePerHour ))
echo "Total salary is $totalSalary"
