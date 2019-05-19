#!/bin/bash

chmod +x  script.sh 

catch_input()
{
    echo "type index of number in fibonacci sequence followed by [ENTER]: "

    read input
    if [ $input -eq $input 2>/dev/null ]
    then
        echo -e "\e[93m"

        fib_index $input $input
    else
        echo "$input is not an integer"
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
   
    echo $index
    echo "your input is $index"
   
    for (( i=0; i<$index; i++ )) 
    do
        loops=$((loops + 1))
        temp=$numberone
        numberone=$numbertwo
        numbertwo=$((temp + numberone))
        echo -n "$numberone "
    done

    echo -n "$number2"
}


hello_world

print_date

catch_input

$SHELL