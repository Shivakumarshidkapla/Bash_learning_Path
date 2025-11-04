#!/bin/bash 
echo "please enter some value";
read value
my_function() {
echo "hey there the function returns the value that you entered: $1"
}

my_function "$value"
