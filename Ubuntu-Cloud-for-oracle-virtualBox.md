# How to Customize Run Ubuntu Cloud minimal on VMware or Oracle VirtualBOX.


## Download Ubuntu Cloud new release ```.vmdk``` from  
[https://cloud-images.ubuntu.com](https://cloud-images.ubuntu.com)


##  Ubuntu ```20.04``` Download For x64 bit cpu 
[focal-server-cloudimg-amd64.vmdk](https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.vmdk)

## Also you need to download third party lighweight linux like Alpine or Tinycore.
you just need this for reset your root password for the first time.

So i use tinycore linux its very small maybe only 16MB. Download it from here 
[Core-current.iso](http://tinycorelinux.net/12.x/x86/release/Core-current.iso) 


## Save downloaded file to your harddrive where you have store virtual machine VMDK or Vdi files..
for example i have download ```focal-server-cloudimg-amd64.vmdk``` and ```tinycorelinux-Core-current.iso``` files to my ```G:\virtualbox\temp``` location..


## For Oracle Virtual Box you need to convert ```VMDK``` to ```vdi```

Open windows 
```command promt```
first you need to go drive C 
```c:```
then your need to go virtalBox installed folder
```cd "c:\Program Files\Oracle\VirtualBox\"```

now you need to convert VMDK to Vdi file by using this command 
```VBoxManage clonehd --format VDI "VMDK file path" "New VDI file path"```

in my case the command will be ```VBoxManage clonehd --format VDI "G:\virtualbox\temp\focal-server-cloudimg-amd64.vmdk" "G:\virtualbox\temp\focal-server-cloudimg-amd64.vdi"```



## Now you have to create new Virtual Machine on Oracle VM BOX

Open ```Oracle VirtualBox Manager``` click on ```New``` give it a name anything ( i gave it ```Ubuntu cloud```) 

Now click on ```create``` it will ask you to locate your VDI file location..
locate the same location where you have saved your Vdi file and give it new name ```ubuntu-cloud.vdi``` 
(eg. location looks like ```"G:\virtualbox\temp\ubuntu-cloud.vdi"```)


## Now go to your vdi file loacation (G:\virtualbox\temp) and do the following steps:

delete ```ubuntu-cloud.vdi``` file that location

## Now you need to delete your ubuntu-cloud Vdi file to Oracle virtual Machine..

Open ```Oracle VirtualBox Manager``` click on ```Ubuntu cloud``` Click on```Settings``` Click ```Storage```, then select ```ubuntu-cloud.vdi``` right click and Delete.


## Now you need to add your converted Vdi file..

Click on ```Adds hard disk``` click ```Add``` locate your Vdi location and select ```focal-server-cloudimg-amd64.vdi```


## Now need to select ```tinycorelinux-Core-current.iso``` as Optical Disk

select ```Empty``` drive click on setect ```Optical Disk```  select ```Chosse select Disk file```  then select ```tinycorelinux-Core-current.iso``` file from your downloaded location..



## Now start you ubuntu cloud VM

It will ask you to select ```tinycorelinux-Core-current.iso``` file for boot. select ```tinycorelinux-Core-current.iso``` from that droup down menu

then it will start tinycorelinux... ```Enter``` if its ask for ```Press Enter```

even it will do it automatically...


## now you need to mount your ubuntu cloud disk

on that tinycorelinux terminal need to create a folder for mount disk
```sudo mkdir /home/sda1```

now you need to check disk list which disk you need to mount by this command
```fdisk -l```

you will see the disk location ```/dev/sda``` so you need to mount first partition from that disk by this command
```sudo mount /dev/sda1 /home/sda1```















<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/1nano-grub.JPG" alt="shamim4s" /> </p>




<br />
#Finally your Ubuntu is now Ubuntu Minimal version...


<br />



<br />



<br />




## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as approdd

## License
[MIT](https://choosealicense.com/licenses/mit/)