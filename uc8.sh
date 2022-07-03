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
totalWage=0
echo "daily wage    total wage"
while(( totalWorkingHours < maximumHours && totalWorkingDays < maximumDays ))
do
    (( totalWorkingDays++ ))
    employeeAttendance=$(( RANDOM % 3 ))
    noOfHours=$( workHours $employeeAttendance)
    (( totalWorkinghours += noOfHours ))
    dailyWage=$(( noOfHours * wagePerHour ))
    (( totalWage += dailyWage ))
    wage[$totalWage]=$dailyWage
    echo "$dailyWage           $totalWage"
done
