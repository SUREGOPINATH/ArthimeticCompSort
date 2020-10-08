#!/bin/bash -x

##code of master
echo "welcome"

##code of UserCase1
read -p "Enter the value1:" number1
read -p "Enter the value2:" number2
read -p "Enter the value3:" number3

##code of Computation 1

comp1=$(($number1+$number2 *$number3))

##code of Computation 2

comp2=$(($number1*$number2 +$number2))


##code of compuation 3

comp3=$(($number3+($number1/$number2)))

##code of computation 4

comp4=$(($number1%$number2+$number3))

##code of storing computation values in dictionaries

declare -A compDictionary

compDictionary['comp1']=$comp1
compDictionary['comp2']=$comp2
compDictionary['comp3']=$comp3
compDictionary['comp4']=$comp4

echo ${compDictionary[@]}

##code of storing values in array

declare -a compArray
compArray[0]=${compDictionary[comp1]}
compArray[1]=${compDictionary[comp2]}
compArray[2]=${compDictionary[comp3]}
compArray[3]=${compDictionary[comp4]}

echo ${compArray[@]}

##code of sorting in descending order

lenght=${#compArray[@]}
for (( counter=0;$counter != 4; counter++ ))
do
	for (( counter2=$counter;$counter2!=4;counter2++ ))
	do
		if [ ${compArray[counter]} -lt ${compArray[$counter2]} ]
		then
			temp=${compArray[$counter]};
			compArray[$counter]=${compArray[$counter2]};
			compArray[$counter2]=$temp;
		fi
	done
done

echo ${compArray[@]}

##code of sorting an array in ascending order

declare -a compArrayInAscending

for (( counter=0,counter2=$(($lenght-1)); $counter != $lenght; counter++, counter2-- ))
do
	compArrayInAscending[$counter]=${compArray[$counter2]}
done
echo ${compArrayInAscending[@]}

