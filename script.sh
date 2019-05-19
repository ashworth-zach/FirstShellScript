#!/bin/bash

chmod +x  script.sh 

catch_input()
{
    echo "type index of number in fibonacci sequence followed by [ENTER]: "

    read -s input
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

write_file()
{
    text="CONCAT TEST"
    finalstring="final string: "
    for ((i=0;i<100;i++))
    do
        text="$text$i"
        finalstring="$finalstring$text"
    done
    echo $finalstring >> test.txt
    FILES=./test.txt
    for f in $FILES
    do
    echo "Processing $f file..."
    # count number of lines and output that for file $f
    wc -l $f
    done
}

read_file()
{
    echo
    echo "would you like to see the contents of the test.txt file? [Y or N]"
    read seeCat
    if test $seeCat = "Y"
    then
        cat test.txt
    else
        echo
        echo "suit yourself..."
    fi
}

clear >$(tty)

ls -lah 

echo "cat: " | cat - test.txt > test2.txt

hello_world

print_date

catch_input

write_file

base64 -d <<<"H4sIAJM2MVYAA1NQgAEDIIhHBsgCBmgAU8TAQJsL2SgU41AFiDALYRhUF8I0NAEUCbBZUB7MBGRrUXX
g8DC6CagORwkYtDCDcw3IMwDdOBL1IyRRwpBI7cihTlSYkRRNUHcRnUZgXIQGIlOoOQC/4ufk0gIAAA==" | gunzip

read_file
exit_script()
{
    echo

    echo "press enter to exit ..."
    read -s exitvar

    exit 0
}

exit_script

