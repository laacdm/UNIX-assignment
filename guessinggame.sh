#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to the game of guessing the number of files in this directory."

function question {
	numfiles=$(ls -1| wc -l)
	echo "How many files does this directory has?"
	read response
}

question

while [[ $response -ne $numfiles ]]
do

	if [[ $response -gt $numfiles ]]
	then
 
		echo "Your guess is too high."
		echo "Make a lower guess."			
	else
		echo "Your guess is too low."
		echo "Make a higher guess."
	fi

question
done

echo "Congratulations your guess is correct, there are:"  
echo $numfiles "files in this directory."
echo ""
