#!/bin/bash
clear
echo -e "What is your name : \c"
read name
echo hello $name. Welcome to Shell programming
sleep 2
clear
echo -e "Would you like to see a listing of the files in your Current Working
Directory? [y/n]: \c"
read yn
if [ $yn = y ]
then
 ls
fi

