#!/bin/bash

apt-get install kazam

df -h
sleep 5
free -h
sleep 5
cat /proc/cpuinfo  |grep i7
sleep 5

apt-get install screenkey
