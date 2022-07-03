attendance=$(( RANDOM % 2 ))
if(( attendance == 0 ))
then
    echo "Employee is absent"
else
    echo "Employee is present"
fi

wagePerHour=20
noOfHours=8
echo "The Daily Employee Wage is $(( attendance * wagePerHour * noOfHours ))"
