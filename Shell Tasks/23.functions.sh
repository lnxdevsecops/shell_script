#!/bin/bash

# Function definition
function my_function() {
    # commands to be executed
    echo "Hello from my_function"
}

# Call the function
my_function
----------------------------------------------------------------------
#!/bin/bash
function add() {
    echo "--------Addision----------"
    a=$(($x + $y))
    echo "Addition of $x & $y is :" $a
}

function sub() {
    echo "----------substraction----------"
    a=$(($x - $y))
    echo "Substraction of $x & $y is: " $a
}

function mul() {
    echo "---------multiplication-----------"
    a=$(($x * $y))
    echo "Multiplication of $x & $y is: " $a
}

function div() {
    echo "---------Division--------------"
    a=$(($x / $y))
    echo "Division of $x & $y is: " $a
}

echo "Please choose the which operation do you want to perform: \n 1. add \n 2. sub \n 3. mul \n 4. div: "
read -p "Please type operation which you want to peform: " operation
read -p "Please enter first value: " x
read -p "Please enter second valuee: " y
$operation
