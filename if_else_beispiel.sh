#!/bin/bash 


echo "do you want enter a number or string[number/string]:"

read num_string

if [[ $num_string != 'number' && $num_string != 'string' ]]; then
 echo "please enter either number or string:"
 read num_string
 if [[ "$num_string" != "number" && "$num_string" != "string" ]]; then
    echo "❌ Invalid input again. Aborting..."
    echo "Restarting the script..."
    exec "$0"   # Restarts the same script
    exit 1      # Exits current instance (optional since exec replaces it)
 fi
fi

if [ $num_string = 'number' ]; then
 echo "please enter a number"
 read nummer
 if [ $nummer -gt 10 ]; then 
  echo "nummer is greater than 10"
 elif [ $nummer -eq 10 ]; then 
  echo "nummer is equal to 10" 
 else 
  echo "nummer is less then 10"
 fi
else
 echo "please enter a string"
 read string
 echo "the string that you entered is $string"
fi


