#!/bin/bash
pid=$$
echo "Processs id is: $pid"
echo "Script ran on `date +%Y-%m-%d-%T`"
x=0
if [ $# -ge 1 ]
then
 echo "This script doesn't run with any arguments, you have provided $# arguments"
 echo "You provided These arguemnts '$@' "
else
 while [ $x -le 10 ]
 do
  echo "hostname is $HOSTNAME This is number $x"
  echo "Seconds = $SECONDS"
  echo $LINENO
  x=$(( x + 1 ))
  files=$( ls -l /etc| wc -l )
  echo "Number of files in /etc is $files"
  read -p 'User Name:' uservar
  read -sp 'Password:' passvar
  echo "User name is '$uservar' and Password is $passvar"
  echo $0 :: x : $x, files : $files
 done
fi
