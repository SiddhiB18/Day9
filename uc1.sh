echo "Welcome to employee wage computation problem"
attendance=$(( $RANDOM % 2 ))
if [ $attendance -eq 0 ]
then
echo "Employee is Absent"
else
echo "Employee is Present"
fi
