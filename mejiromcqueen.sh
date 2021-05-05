#!/bin/bash

MEJIRO="メジロマックイーン"
COUNT=0

readonly ARRAY=("メ" "ジ" "ロ" "マ" "ッ" "ク" "イ" "ー" "ン")

while :
do
    OUT=""
    for ((i=0; i<${#ARRAY[*]}; i++)); do OUT+="${ARRAY[$(($RANDOM % ${#ARRAY[*]}))]}" ; done
    if [ $OUT = $MEJIRO ]; then
        break
    fi

    COUNT=$(( COUNT + 1 ))
    if [ $COUNT = 100 ]; then
        break
    fi
done

echo "うまぴょい"
echo "$COUNT"
echo "$OUT"
