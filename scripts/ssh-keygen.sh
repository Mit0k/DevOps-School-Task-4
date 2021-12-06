#!/bin/bash
ssh-keygen -t rsa -f $1 -C $2 -N "" <<< y
sleep 1
