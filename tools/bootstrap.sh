#!/bin/sh

BUGSPLAT_AMI=ami-6006f309
INSTANCE_TYPE=t1.micro
MAX_PRICE=0.04

$EC2_HOME/bin/ec2-request-spot-instances \
    -k spot-key-2 \
    $BUGSPLAT_AMI \
    -t $INSTANCE_TYPE \
    -f tools/ec2-user-data.sh \
    -p $MAX_PRICE