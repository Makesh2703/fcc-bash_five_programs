#!/bin/bash
# Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
function GET_FORTUNE() {
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
    else
  echo Try again. Make sure it ends with a question mark:
  fi

  read QUESTION
}
GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done


N=$(( RANDOM % 6 ))
echo -e "\n${RESPONSES[$N]}"
