heads_count=0
tails_count=0

while true; do
  # Generate a random number between 0 and 1
  rand_num=$((RANDOM % 2))

  if [ $rand_num -eq 0 ]; then
    # If the random number is 0, count it as a Heads flip
    heads_count=$((heads_count+1))
    echo "Heads wins: $heads_count"

    if [ $heads_count -eq 11 ]; then
      echo "Heads wins 11 times!"
      break
    fi

  else
    # If the random number is 1, count it as a Tails flip
    tails_count=$((tails_count+1))
    echo "Tails wins: $tails_count"

    if [ $tails_count -eq 11 ]; then
      echo "Tails wins 11 times!"
      break
    fi
  fi
done
