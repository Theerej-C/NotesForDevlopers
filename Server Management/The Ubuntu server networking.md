* The *ip addr* will give the information about the networking info.
* The other detailed info about the interface can be found using the *lshw -class network*.
* We can configure static IP address for the server. It is the main thing as the IP of the server should not change that means we should not use the DHCP.
* The netplan folder will be having the configurations of the network.
* The config file is the 00-installer-config.yaml.
* We can edit it to change the thing. It is a well and good practice to backup the file before changing it.
* We change using the syntax
* ![[Pasted image 20240119123030.png]]
* This is the basic structure of the file where we set the IP as the static one and need to set the router as the routes.
* IP command is an important one to check add and do something to the networking configuration and need to master this.
* We can set static host names to the IP addresses in the /etc/hosts file by adding the name and the route.
* ![[Pasted image 20240119124651.png|300]]
* The dig and the tracepath is the tools to trouble shoot the networking errors in the server.