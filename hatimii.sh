#!/bin/bash
while :
do
    read -p "Repeat ? (y/n): " DATA
    if [ "$DATA" = "y" ]; then
        echo "Repeat !!"
    elif [ "$DATA" = "n" ]; then
        echo "End repead."
        break
    else
        echo "Input y or n key"
    fi
done
