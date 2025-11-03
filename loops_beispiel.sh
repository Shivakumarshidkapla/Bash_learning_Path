#!/bin/bash 

echo "please enter which loop you want to test[for/while/until/continue/break]:"

read loop_name
my_array=("for" "while" "until" "continue" "break")

valid=false
for item in "${my_array[@]}"; do 
   if [ $item = $loop_name ]; then
    valid=true
    break;
   fi
done

if [ "$valid" = false ]; then
  echo "❌ Invalid input: '$loop_name'"
  echo "Please enter one of: ${my_array[*]}"
  echo "Restarting the script..."
  exec "$0"
  exit 1
fi

if [ $loop_name = "for" ]; then 
 echo "for loop testing started..."
 echo "please enter how many iteration you want to do, please keep it under 10"
 read iterations

 for i in $(seq 1 $iterations);do 
  echo Iteration $i ;
 done
fi

if [ $loop_name = 'while' ]; then
 echo "while loop testing started.."
 echo "please enter how many iteration you want to do, please keep it under 10"
 read iterations
 
 count=1
 while [ $count -le $iterations ]; do
  echo "count is $count"
  ((count++))
 done
fi 

if [ $loop_name = "until" ]; then 
 echo "until loop testing started.."
 echo "please enter how many iteration you want to do, please keep it under 10"
 read iterations

 count=1
 until [ $count -gt $iterations ]; do 
  echo "count is $count"
  ((count++))
 done
fi


if [ $loop_name = 'continue' ]; then 
 echo "contiue statement testing started.."
 echo "please enter how many iteration you want to do, please keep it under 10"
 read iterations
 echo "please enter at what iteration you want to skip, please keep it under $iterations"
 read skip_ite

 for i in $(seq 1 $iterations); do
  if [ $i -eq $skip_ite ]; then
   echo "Skipping iteration $i" 
   continue
  fi   
  echo "this is $i iteration"
 done
fi

if [ $loop_name = 'break' ]; then
 echo "break statement testing started.."
 echo "please enter how many iteration you want to do, please keep it under 10"
 read iterations
 echo "please enter at what iteration you want to break a loop, please keep it under $iterations"
 read break_ite

 for i in $(seq 1 $iterations); do 
  echo "this is $i iteration"
  if [ $i -eq $break_ite ]; then
   echo "break statement has arrived exiting the for loop" 
   break;
  fi
 done
fi  


 
