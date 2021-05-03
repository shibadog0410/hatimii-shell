#!/bin/bash

INPUT=""
USERINPUT=""
HATIMII="はちみー"
WONAMERUTO="をなめると"
ASHIGAA="あしがー"
HAYAKUUNARUU="はやくーなる"

while :
do
    while :
    do
        read -p "0:${HATIMII}, 1:${WONAMERUTO} " DATA
        if [ "$DATA" = "0" ]; then
            INPUT="${INPUT}${HATIMII} "
            USERINPUT="${USERINPUT}0"
        elif [ "$DATA" = "1" ]; then
            INPUT="${INPUT}${WONAMERUTO} "
            USERINPUT="${USERINPUT}1"
                read -p "0:${ASHIGAA}, 1:${HATIMII} " DATA
                if [ "$DATA" = "0" ]; then
                    INPUT="${INPUT}${ASHIGAA} "
                    USERINPUT="${USERINPUT}0"
                    break
                elif [ "$DATA" = "1" ]; then
                    INPUT="${INPUT}${HATIMII} "
                    USERINPUT="${USERINPUT}1"
                    continue
                fi
            break
        fi
    done

    while :
    do
        read -p "0:${ASHIGAA}, 1:${HAYAKUUNARUU} " DATA
        if [ "$DATA" = "0" ]; then
            INPUT="${INPUT}${ASHIGAA} "
            USERINPUT="${USERINPUT}0"
        elif [ "$DATA" = "1" ]; then
            INPUT="${INPUT}${HAYAKUUNARUU} "
            USERINPUT="${USERINPUT}1"
                read -p "0:${HATIMII}, 1:終了 " DATA
                if [ "$DATA" = "0" ]; then
                    INPUT="${INPUT}${HATIMII} "
                    USERINPUT="${USERINPUT}0"
                    break
                elif [ "$DATA" = "1" ]; then
                    USERINPUT="${USERINPUT}1"
                    echo "$INPUT"
                    echo "$USERINPUT"
                    exit
                fi
            break
        fi
    done
done
