#!/bin/bash

LOG_FILE="/var/log/wlan0poweroff.log"
echo "Setting wlan0 power management off in 5 sec..." > $LOG_FILE
echo "Current wlan0 power management configuration" >> $LOG_FILE
iwconfig wlan0|grep Power\ Management >> $LOG_FILE
sleep 5
echo "Setting wlan0 power management off..." >> $LOG_FILE
iwconfig wlan0 power off
iwconfig wlan0|grep Power\ Management >> $LOG_FILE
