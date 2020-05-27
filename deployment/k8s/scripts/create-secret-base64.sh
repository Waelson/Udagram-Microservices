#!/bin/bash
read -p "Input a value: " var
echo "***********************************"
echo -n $var | base64
echo "***********************************"