* The *ip addr* will give the information about the networking info.
* The other detailed info about the interface can be found using the *lshw -class network*.
* We can configure static IP address for the server. It is the main thing as the IP of the server should not change that means we should not use the DHCP.
* The netplan folder will be having the configurations of the network.
* The config file is the 00-installer-config.yaml.
* We can edit it to change the thing. It is a well and good practice to backup the file before changing it.
* 