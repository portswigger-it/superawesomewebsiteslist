#!/usr/bin/env bash

cp superawesomesites.txt superawesomesites.bak
awk -F. '{for(i=NF;i>0;i--){printf ".%s",$i};printf "\t%s\n",$0}' superawesomesites.txt|sort|cut -f2 > xx.$$.txt && mv xx.$$.txt superawesomesites.txt

