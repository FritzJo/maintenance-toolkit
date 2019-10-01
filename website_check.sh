#!/bin/bash

while read site; do
    curl $site -s -f -o /dev/null && 
        echo -e "\e[32mUP\e[0m $site" || 
        echo -e "\e[31mDOWN\e[0m $site"
done <websites.txt
