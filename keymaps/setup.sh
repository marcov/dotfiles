#!/usr/bin/env bash

set -o pipefail

if [ "`id -u`" != "0" ]; then
    echo "You need to run this as root"
    exit -1
fi

sedScript="s|(KEYMAP=).*$|\1$(pwd)\/us-mine.map|g"
f="/etc/vconsole.conf"

sed -E "$sedScript" "$f"

echo ""
read -e -p "Does new content look allright? [y/n]: " confirmWrite

if [ "$confirmWrite" != "y" ]; then
    echo "Nothing done"
    exit -1
fi


sed -i -E "$sedScript" "$f"
echo -e "\n$f file changed successfully\n"
exit 0
