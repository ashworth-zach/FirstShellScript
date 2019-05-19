#!/bin/bash

chmod +x  script.sh 

catch_input()
{
    echo "type index of number in fibonacci sequence followed by [ENTER]: "

    read input
    if test $input = "hello"
    then
        echo -e "Default \e[92mLight green"

        for (( i=0; i<100000; i++ )) 
        do
            echo -n "$i"
        done
        echo
        echo
        echo "hello is not a valid input..."
    else
        if [ $input -eq $input 2>/dev/null ]
        then
            echo -e "\e[93m"

            fib_index $input
            echo "completed..."
        else
            echo "$input is not an integer"
        fi
    fi
}

print_date()
{
    echo -e "\e[94m"
    echo "current date is:  `date`"
}
hello_world()
{
    echo -e "\e[91m"
    echo "HELLO WORLD"
}

fib_index()
{
    numberone=0
    numbertwo=1
    loops=0
    index=$1
   
    echo "your input is $index"
   
    for (( i=1; i<$index+1; i++ )) 
    do
        loops=$((loops + 1))
        temp=$numberone
        numberone=$numbertwo
        numbertwo=$((temp + numberone))
        echo -n "$i) $numberone "
        echo
    done
    echo "The number at the index of [$index] is $numberone ..."
    indexPlusOne=$((index+1))
    echo "The number at the index of [$indexPlusOne] is $numbertwo ..."
}


hello_world

print_date

catch_input

$SHELL