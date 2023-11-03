#!/usr/bin/zsh 

cd $1 

if [ $2 ]
then
  $2 . 
fi

exec $SHELL
