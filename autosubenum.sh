#!/bin/bash


mainPATH=/root
bar="---------------------------------------"

echo -e "\n$bar\n\tSubdomains Enumerator\n$bar\n"
read -p "Please enter target (i.e. site.com): " domain

HOST=$domain


function automateSubfinder() {
    echo -e "\n$bar\n\tRunning Subfinder\n$bar\n"
    subfinder -o domain.txt -t 100 -d $HOST 
}

automateSubfinder $HOST
