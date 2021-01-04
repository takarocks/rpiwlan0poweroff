#!/bin/bash
echo "Setting wlan0 power management off in 5 sec..."
iwconfig wlan0|grep Power\ Management
sleep 5
iwconfig wlan0 power off
iwconfig wlan0|grep Power\ Management
