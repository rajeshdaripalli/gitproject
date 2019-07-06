#!/bin/bash
pid=$$
echo "Processs id is: $pid"
echo "Script ran on `date +%Y-%m-%d-%T`"
x=0
 while [ $x -le 10 ]
 do
  echo "Script ran on `date +%Y-%m-%d-%T` : This is number $x" >> /tmp/$pid
 done
