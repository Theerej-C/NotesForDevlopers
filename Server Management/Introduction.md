* The Linux kernel and the boot will have the BIOS or the UEFI mode in them.
* These both things are different in the many things.
* The BIOS has many limitations in the things the main one is limited amount of partition part.
* The UEFI partition doesn't have the limitation. It has just a UEFI partition and has the code in that partition for the boot.
* The GRUB is a boot loader which will boot from the kernel to the OS. This boot loader will place the OS in the memory.
* When we see the boot grub folder if there is a menu.lst then it is the legacy GRUB and the other than that then it is GRUB2.
* grub2 is very much customizable and many features are there.
* We can see the grub files in the /etc/default/grub. This is a grub config file.
* The grub files will be in the boot/grub folder in the root directory.
* ![[Pasted image 20240119100554.png]]
* There are many types of boot methods in the linux. If the boot process takes place in the hardware then it is the Hardware mode.
* The PXE is the hardware type. It queries the DHCP server and get a boot file from the network.
* The USB method is also the hardware thing where it boots from the USB or a hardware. 
* The software side is the ISO booting after the kernel booting happened. The grub is in the software side where the ISO file is the OS of it.
* There are boot modules and the files to boot the kernel. 
* ![[Pasted image 20240119101325.png]]
* The kernel file is the vmlinuz or vmlinux which is the main kernel file which will be booted after the GRUB.
* Then the full kernel is loaded with the many modules like I/O.
* The initrd which is Init Ram driver which helps the kernel to access the file system.
