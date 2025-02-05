echo "Hello world"

# echo "Enter name: "
# read n
# echo "Welcome $n"


for i in {1..5}; do
  echo "Looping: $i"
done

echo "whilw loop"

count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  count=$((count + 1))
done

function greet() {
  echo "Hello, $1!"
}
greet "Alice"
