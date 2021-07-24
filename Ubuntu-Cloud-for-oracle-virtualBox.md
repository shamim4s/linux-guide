# How to Customize Run Ubuntu Cloud minimal on VMware or Oracle VirtualBOX..

___________________________________________________________________________________________________________________________

[![install ubuntu cloud on VirtualBox](https://github.blog/wp-content/uploads/2021/05/GitHub-video-upload-GA_fig-3.png)](https://youtu.be/HWb6kbREMZU)
___________________________________________________________________________________________________________________________

## Download Ubuntu Cloud new release ```.vmdk``` from  
[https://cloud-images.ubuntu.com](https://cloud-images.ubuntu.com)
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/1cloud-images.ubuntu.com.jpg" alt="shamim4s" /> </p>

##  Ubuntu ```20.04``` Download For x64 bit cpu 
[focal-server-cloudimg-amd64.vmdk](https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.vmdk)

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/2focal-server-cloudimg-amd64.vmdk.jpg" /> </p>

## Also you need to download third party lighweight linux with Custom password.
you just need this for reset your root password for the first time.

So i use tinycore linux its very small maybe only 16MB. Download it from here 
[Custom-Linux.iso](https://raw.githubusercontent.com/shamim4s/linux-guide/master/assets/linux/tinycorelinux.iso) 

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/tinylinuxshamim.jpg" /> </p>

## Save downloaded file to your harddrive where you have store virtual machine VMDK or Vdi files..
for example i have download ```focal-server-cloudimg-amd64.vmdk``` and ```tinycorelinux.iso``` files to my ```G:\virtualbox\temp``` location..

<br />

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

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/3convert.JPG" /> </p>

## Now you have to create new Virtual Machine on Oracle VM BOX

Open ```Oracle VirtualBox Manager``` click on ```New``` give it a name anything ( i gave it ```Ubuntu cloud```) 

Now select type ```linux``` and version ```Ubuntu (64bit)``` then select ```Use and existing virtual hard disk file``` then ```Choose a virtual disk``` and select your converted ```focal-server-cloudimg-amd64.vdi``` file

Now click on ```create``` 

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/4newvm.JPG" /> </p>
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/5sel-cloud-storage.jpg" /> </p>



## Now need to select ```tinycorelinux.iso``` as Optical Disk


Open ```Oracle VirtualBox Manager``` click on ```Ubuntu cloud``` Click on```Settings``` Click ```Storage```, select ```Empty``` drive click on setect ```Optical Disk```  select ```Chosse select Disk file```  then select ```tinycorelinux.iso``` file from your downloaded location..

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/8sel-tiny.jpg" /> </p>
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/9sel-tiny.jpg" /> </p>

## Now start you ubuntu cloud VM

It will ask you to select ```tinycorelinux.iso``` file for boot. select ```tinycorelinux.iso``` from that droup down menu

then it will start tinycorelinux... ```Enter``` if its ask for ```Press Enter```

even it will do it automatically...

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/10sel-tiny.jpg" /> </p>

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/11starttiny.JPG" /> </p>

## Now you need to mount your ubuntu cloud disk

on that tinycorelinux terminal need to create a folder for mount disk
```sudo mount /dev/sda1 /mnt/sda1```

then

```sudo mount /dev/sr0 /mnt/sr0```


now you need to copy custom password file to your Ubuntu 
```sudo cp -r /mnt/sr0/etc /mnt/sda1/```

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/13mountshadow.JPG" /> </p>

## Now need to remove tinycorelinux.iso from vm machine

Power off your Ubuntu Cloud virtual machine and open Oracle VM manager.
Select ```Ubuntu Cloud``` Machine then select ```Settings``` then select ```storage``` then select ```tinycorelinux.iso``` from ```Controller:IDE``` then remove ```tinycorelinux.iso```

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/14deletetiny.jpg" /> </p>

## Now start your Ubuntu Cloud VM
Now you can start your ```Ubuntu Cloud VM``` 
your login detail will be 
<br />
user 	 : ```root```
<br />
password : ```Shamim4s```
<br />
First "```S```" Should be Capital..
<br />
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/cloud/15ubuntu.JPG" /> </p>
<br />
<br />
you can change password after login Ubuntu Cloud by this command
<br />

```passwd root```







<br />


<br />



<br />



<br />




## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as approdd

## License
[MIT](https://choosealicense.com/licenses/mit/)
