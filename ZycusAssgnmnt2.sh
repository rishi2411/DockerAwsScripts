#!/bin/bash

//Command to be run from the absolute path

//Running a loop for comma separted host names soa s to iterate them one by one
for line in `echo $1 | sed 's#,#\n#g'`
do
//Printing Server name
echo $line
//Switching to the host using ssh and running the command
ssh $line "$2"
done
