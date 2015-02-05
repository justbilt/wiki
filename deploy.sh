#!/bin/bash

function commit()
{
	DATA=`date +%y-%m-%d-%H`
	PWD=`pwd`
	echo commit:$PWD:$DATA
	echo '--------------------------------------------------'
	git add .
	git rm $(git ls-files --deleted)
	git commit -m "deploy$DATA"
	git push origin
}

commit