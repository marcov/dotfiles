#!/bin/sh

for i in {0..255}; do
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m  "
    r=`expr ${i} % 8`
    if [ ${r} -eq 7 ]; then echo ""; fi
done

