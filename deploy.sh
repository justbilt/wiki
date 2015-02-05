#!/bin/bash

function commit()
{
	DATA=`date +%y-%m-%d-%H`
	PWD=`pwd`
	echo '--------------------------------------------------'
	echo commit:$PWD:$DATA
	echo '--------------------------------------------------'
	git add .
	git rm $(git ls-files --deleted)
	git commit -m "deploy$DATA"
	git push origin
}

# commit source
commit

# commit output
cd ./output
git checkout gh-pages
commit