
# 7 Days to Die Servers (VMs)

## Starting from a clone of the SteamCMD Base VM

* Missing packages from server
  * screen
  * rsync
  * pk7zip-full
* In VirtualBox: Refresh MAC Addresses on network interfaces
* Update all Debian packages?
* IP address
  * Allocate IP address in google docs ipaassignments spreadsheet
  * Update /etc/network/interfaces
  * Note: Fiber modem is DHCP, not static address
* Hostname
  * /etc/hostname
  * /ets/hosts
* Add hostname / ip address to /etc/hosts wherever you'll connect from
* Run steamcmd to get updates (steamcmd is installed in /usr/games)

### Installing (or updating) 7 Days to Die server from steamcmd

``` bash
$ steamcmd
force_install_dir /home/steamcmd/7daysded
login anonymous
app_update 294420 -beta alpha19.3
```

### Compopack

Copy all prefabs to ~/7daysded/Data/Prefabs

### World Data

Goes in ~/7daysded/Data/Worlds

### Config File

Update server config file (xml file)

## Droplet bring-up

* Make my user
* Copy .ssh folder from root to my user and chown
* (Add key from source VM)
* Rsync 7daysded folder to user


## Save information

New game

.local/share/7DaysToDie/Saves/7dtdpts10/My Game/
