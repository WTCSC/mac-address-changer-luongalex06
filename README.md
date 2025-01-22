[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/tp86o73G)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=17745242)

# Macdaddy
 A script that allows to hide yourself from the internet!

## Features
- Allows you to show you your MAC address
- Allows you to change your MAC address to, either a random one or creating your own
- Allows you to reset your MAC address
## Installation
1. Use Bash Shell with a Unix based environment (like Linux)
2. Install `Macchanger` by doing the following command ``sudo apt install macchanger``
3. Download the script as `macdaddy.sh` in a directory
4. Run the following command to make the script executable `chmod +x macdaddy.sh`
5. Run the script by running this command in the terminal `./macdaddy.sh`
## Usage
1. When you first run the script, it will ask you to enter your NIC interface. You can check yours by typing in `ifconfig` in the terminal. It will show you your NIC interface, as well as ip, mac address, etc.
2. Once you've done that, it will ask `How may I help you?` You insert the number of what you want to do

    1. Show mac address
    2. Change Mac
    3. Reset to original Mac address

3. If you type `2`, it will give you options:
    1. Randomize MAC address
    2. Create your own
    
    If you choose to create your own, make sure that it is in the right MAC address format, or else it will not work.
