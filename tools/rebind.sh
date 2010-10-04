#!/bin/sh

ADDRESS=184.72.217.196

if [[ "$1" == "" ]]; then
    echo "usage: rebind.sh [instance id]"
    exit 1
fi

$EC2_HOME/bin/ec2-associate-address \
    $ADDRESS \
    -i $1