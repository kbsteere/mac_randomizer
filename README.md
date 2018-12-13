### Mac Address Randomizer
Script loops through network devices and modifies MAC address to a random value. It is meant to be used to prevent MAC address tracking when using public wifi.   
___
#### Quick Start
* Script can currently be used in any directory but does require sudo or su in order to perform the network modification commands.
* Run the file from the terminal: `sudo ./mac_randomizer.sh`

Script will return something like this:

_[ ok ] Stopping network-manager (via systemctl): network-manager.service.
Changing MAC for wlan0 from 00:00:00:00:00:00 to ff:ff:ff:ff:ff:ff
[ ok ] Starting network-manager (via systemctl): network-manager.service._

**Note:** script may require changing permissions to an executable. Use _chmod 755 filename_
___
#### Supported Distros
Script has been run on Elementary OS. This should work on any Ubuntu based distro. Any distro that doesn't use network-manager will not be able to use the script without modification. 

___
#### Future Plans
Plan(s) include but are not limited to:
* Run script randomly at a specific time interval or system event.
* Convert script to a compiled application. (C or C++ or Rust) 
* Expand project to perform more than just MAC address randomization. 
* Add functionality to run script on startup or wake.
* Add feature to auto configure VPN.