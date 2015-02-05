#!/bin/bash

function commit()
{
	DATA=`date +%y-%m-%d-%H`
	echo commit:$pwd:$DATA
	git add .
	git rm $(git ls-files --deleted)
	git commit -m "deploy$DATA"
	git push origin
}

commit