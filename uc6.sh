wagePerHour=20
maximumHours=100
maximumDays=20
totalWorkingHours=0
totalWorkingDays=0
while(( totalWorkingHours < maximumHours && totalWorkingDays < maximumDays ))
do
    (( totalWorkingDays++ ))
    employeeAttendance=$(( RANDOM % 3 ))
    case $employeeAttendance in 
        0)
            echo "Employee is absent"
            noOfHours=0
            ;;
        1)
            echo "Employee is full time present"
            noOfHours=8
            ;;
        2)
            echo "Employee is part time present"
            noOfHours=4
            ;;
    esac
        (( totalWorkingHours += noOfHours ))

done

totalSalary=$(( totalWorkingHours * wagePerHour ))
echo "Total salary is $totalSalary"
