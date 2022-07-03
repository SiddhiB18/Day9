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

declare -A wage
wagePerHour=20
maximumHours=100
maximumDays=20
totalWorkingHours=0
totalWorkingDays=0
total_wage=0

echo "Day     Daily wage    Total wage"
echo
while(( totalWorkingHours < maximumHours && totalWorkingDays < maximumDays ))
do
    (( totalWorkingDays++ ))
    employeeAttendance=$(( RANDOM % 3 ))
    noOfHours=$( workHours $employeeAttendance)
    (( totalWorkingHours += noOfHours ))
    daily_wage=$(( noOfHours * wagePerHour ))
    (( total_wage += daily_wage ))
    wage[$total_wage]=$daily_wage
    echo "Day${totalWorkingDays}          $daily_wage           $total_wage"
done
