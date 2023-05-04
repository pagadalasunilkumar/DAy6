#!/bin/bash

# Set initial values
money=100
goal=200
bet=1
num_bets=0
num_wins=0

while [ $money -gt 0 ] && [ $money -lt $goal ]; do
  # Generate a random number between 0 and 1
  rand_num=$((RANDOM % 2))

  if [ $rand_num -eq 0 ]; then
    # If the random number is 0, the gambler wins the bet
    money=$((money+bet))
    num_wins=$((num_wins+1))
    echo "You won! Current balance: Rs $money"

  else
    # If the random number is 1, the gambler loses the bet
    money=$((money-bet))
    echo "You lost. Current balance: Rs $money"
  fi

  num_bets=$((num_bets+1))
done

if [ $money -eq 0 ]; then
  echo "You are broke. Game over!"
else
  echo "Congratulations, you reached your goal of Rs $goal in $num_bets bets with $num_wins wins!"
fi

