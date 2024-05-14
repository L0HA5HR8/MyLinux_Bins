#!/bin/bash

echo $(ifconfig | grep destination | awk ‘{print $2}’)

# If grep awk doesn’t work, try this…
# echo $(ifconfig |  awk '/destination/ {print $2}')
