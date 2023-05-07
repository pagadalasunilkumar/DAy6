
echo "Enter a number: "
read num

if [ $num -lt 2 ]; then
  echo "$num is not a prime number"
exit 0
fi

i=2
while [ $((i * i)) -le $num ]; do
  if [ $((num % i)) -eq 0 ]; then
    echo "$num is not a prime number"
exit 0
  fi
  i=$((i + 1))
done

echo "$num is a prime number"
