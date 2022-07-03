attendance=$(( RANDOM % 3 ))
case $attendance in 
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

wagePerHour=20
wagePerDay=$(( wagePerHour * noOfHours ))
no_of_days_per_month=20
wagePerMonth=$(( wagePerDay * no_of_days_per_month ))
echo "The Wage of the employee for the month is $wagePerMonth"
