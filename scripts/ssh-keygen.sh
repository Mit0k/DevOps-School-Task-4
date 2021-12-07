#!/bin/bash
ssh-keygen -t rsa -f $1 -C $2 -N "" <<< y
ssh-keygen -p -N "" -m pem -f $1
chmod 400 $1
sleep 1
