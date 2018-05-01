#!/usr/bin/env bash

echo "Gussing-Game" && echo

filesAndDirectories=$(ls | wc -l)

function predict 
{
	echo "Guess how many files and directories in present working directory" && echo
	#Enter only number
	read guess
}

predict

while [[ $guess -ne $filesAndDirectories ]]
do
	if [[ $guess -lt $filesAndDirectories ]] 
	then
		echo "Your guessing number is too high!" && echo
	else
		echo "Your guessing number is too low!" && echo
	fi
	predict
done

echo "congratulation, your guess is right!" && echo 
echo "The list of files and directories in present working directory is/are :" && echo && ls -1tr && echo