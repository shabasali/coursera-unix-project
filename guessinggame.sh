#!/usr/bin/env bash
# File: guessinggame.sh
number=$(ls -A | wc -l)
message="Congratulations! That's the correct number of files in the current directory."
function check_answer {
  if [[ $guess =~ ^[0-9]+$ ]]
  then
    if [[ $guess -gt $number ]]
    then
      echo "That number is too high! Try to guess again:"
    elif [[ $guess -lt $number ]]
    then
      echo "That number is too low! Try to guess again:"
    fi
  else
    echo "Please enter a valid response in the form of a number:"
  fi
}
function crash {
  echo "Handled crash...Game restarting..."
  play
}
function play {
  echo "How many files are in the current directory? Please enter a number:"
  read guess
  while [[ $guess -ne $number ]]
  do
    check_answer
    read guess
  done
  if [[ $guess -eq $number ]]
  then
    echo $message
  else
    crash
  fi
}
play
