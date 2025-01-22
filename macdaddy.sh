#!/bin/bash

# asks for your NIC interface
echo Welcome to Macdaddy!
sleep .5
echo "Please enter your NIC interface (enp0s3, eth0, etc.)"
read interface

# asks what you would like to do
echo "How may I help you? (Please insert number)"
sleep 1
echo 1. Show mac address
sleep .5
echo 2. Change MAC address
sleep .5
echo 3. Reset to original MAC address
read input

# if user puts in 1, it will show your MAC address
if (( $input == 1 )); then
  macchanger -s $interface
  exit 0

# if user puts in 2, it will ask if you want a random or create your own MAC address
elif (( $input == 2 )); then
  echo "Would you like to:"
  sleep .5
  echo 1. Randomize MAC address
  echo 2. Create your own
  read MAC

  if (( $MAC == 1 )); then
    sudo macchanger -r $interface
    echo done
    exit 0
  elif (( $MAC == 2 )); then
    read -p 'address: ' mac_address
    echo "Please enter the MAC address: $mac_address"
    sudo macchanger --mac=$mac_address $interface
    echo done
    exit 0
  fi

# if user puts in 3, it will reset your MAC address
elif (( $input == 3)); then
  sudo macchanger -p $interface  
  echo done
  exit 0
fi