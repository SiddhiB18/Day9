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
echo "The daily wage of the employee is $wagePerDay "
