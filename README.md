# RPi on board WiFi power management off
Raspberry Pi on board WiFi power management disable service

* Version 0.1
* January 4, 2021
* Taka Kitazume


## Prerequisites and Assumptions

* Raspberry Pi (2, 3B, 3B+, Zero) x 1
* On board WiFi is configured as `wlan0`


## Setup

1. Create **services** directory under `pi` user home directory, move to that directory.
  ```
  cd ~
  mkdir services
  cd services
  ```
3. Git clone this project
  ```
  git clone https://github.com/takarocks/rpiwlan0poweroff.git
  ```
4. Copy the rpiwlan0poweroff.service file into **/etc/systemd/system/** directory.
  ```
  sudo cp wlan0poweroff.service /etc/systemd/system/wlan0poweroff.service
  ```
5. Enable the shutdowndetector.service.
  ```
  sudo systemctl enable wlan0poweroff.service
  ```
6. The service is processed every time RPi is booted.




## References
[systemd](https://www.raspberrypi.org/documentation/linux/usage/systemd.md) [www.raspberrypi.org]

