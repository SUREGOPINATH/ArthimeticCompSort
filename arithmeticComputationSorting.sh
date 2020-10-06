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
