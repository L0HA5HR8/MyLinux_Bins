#!/bin/bash

echo $(ifconfig | grep broadcast | awk '{print $2}')

# If grep doesn’t work, try this…
#echo $(ifconfig |  awk '/broadcast/ {print $2}')
