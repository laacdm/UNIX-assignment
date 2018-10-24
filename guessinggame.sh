#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

shopt -s nullglob
numfiles=(*)
numfiles=${#numfiles[@]}

echo "Enter a natural number to guess how many files are in this directory?"
read response


	while [[ $response -ne $numfiles ]]
	do
		
		if [[ $response -gt $numfiles ]]
		then 
			echo "Your guess was too high."			
			echo "Enter a natural number to guess how many files are in this directory?"
        		read response
		else
			echo "your guess was too low."
			echo "Enter a natural number to guess how many files are in this directory?"
                        read response
		fi
	done

echo "Congratulations your guess is correct"  
}
