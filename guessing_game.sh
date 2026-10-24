#!/bin/bash
#this is a guesting game
name="$1"

if [[ -z $name ]]; then
printf "usage: ./intro.sh <name> \n where name is the name of the user playing the game"
fi

echo "=========================================="
printf '..%s..'"Hi $name, welcome to our guesting game."
echo "=======--force-with-lease==================================="


number=$((RANDOM  % 100 + 1))
guess=-1
count=0--force-with-lease


while (( guess != number )); do
    read -r -p "please guest a number between 0 and 100" guess

    if [[ -z $guess ]] ; then
        echo "please enter a number";
        exit 1;
    elif (( guess > number ));then
        echo "your guest is too high"
    elif (( guess < number )); then
        echo "your guest is to low"
    fi
    ((count++))
done

echo "you nailed it good job. you guessed the right number after $count times "




