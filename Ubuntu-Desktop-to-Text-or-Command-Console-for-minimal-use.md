# How to Customize your Ubuntu Desktop to Text / Command Console for minimal use.

This simple tutorial will show you how to boot your Ubuntu system directly into command line (text mode or console). If you just want a console for temporary use, press ``` Ctrl+Alt+F1 ``` on keyboard will switch your desktop to tty1 anf ```Alt+F1``` will return you back to GUI mode.

## To get started

###### Step 01 : 
press Ctrl+Alt+T to open terminal. When it opens, follow the below steps

```bash
sudo nano /etc/default/grub
```
Press **Enter** ,This opens Grub boot loader config file with text editor
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/1nano-grub.JPG" alt="shamim4s" /> </p>


###### Step 02 :

Do below changes:

Comment the line ```GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash”```, by adding ```#```at the beginning, which will disable the Ubuntu GUI screen.
Change ```GRUB_CMDLINE_LINUX=””``` to ```GRUB_CMDLINE_LINUX=”text”```, this makes Ubuntu boot directly into ```Text Mode```.
Uncomment this line ```#GRUB_TERMINAL=console```, by removing the # at the beginning, this makes Grub Menu into real black & white Text Mode (without background image)

**Now Save the changes By ```Ctrl+X``` , then ```Y```, Then ```Enter```**

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/2nano-grub.JPG" alt="shamim4s" /> </p>


###### Step 03 :
After saved the changes, update grub via command:

``` 
sudo update-grub
sudo systemctl enable multi-user.target --force
sudo systemctl set-default multi-user.target
```
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/3update-grub.JPG" alt="shamim4s" /> </p>
###### Step 04 :
Restart your ubuntu,and it will start on terminal mode..
** You can start using on terminal mode **


###### Step 05 :
After restart you can login to you Ubuntu by your **username** or **root** (if you have enabled before)


<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/4firstboot.JPG" alt="shamim4s" /> </p>
or
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/5firstboot.JPG" alt="shamim4s" /> </p>


Now check what IP-Address ubuntu using by any of these command
```
hostname -I
```
or
```
ip a
```

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/6ip-address.JPG" alt="shamim4s" /> </p>
When you will get your IP-Address you can login ssh via that IP-Address
if you didnt enable ssh login please check how to enable ssh login for Ubuntu..

Turnoff your ubuntu and start again, Now you can start ubuntu in headless mode, so it will dont show any extra windows like hiddenly running ubuntu on backgroud. you can see ubuntu is running on preview panel. 
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/7run-headless.jpg" alt="shamim4s" /> </p>
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/8sruuning-headless.jpg" alt="shamim4s" /> </p>

open your windows command promt and login to your Ubuntu by SSH command  (eg. ssh root@192.168.1.103)
```
ssh root@ip-address 
```
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/9connectssh.JPG" alt="shamim4s" /> </p>


###### Step 06 : 
** This step only for those who really want to remove completely all GUI application from Ubundu **

Type of copy this command to your terminal :  
```
sudo apt purge adwaita-icon-theme gedit-common gir1.2-gdm-1.0 \
gir1.2-gnomebluetooth-1.0 gir1.2-gnomedesktop-3.0 gir1.2-goa-1.0 \
gnome-accessibility-themes gnome-bluetooth gnome-calculator gnome-calendar \
gnome-characters gnome-control-center gnome-control-center-data \
gnome-control-center-faces gnome-desktop3-data \
gnome-font-viewer gnome-getting-started-docs gnome-getting-started-docs-ru \
gnome-initial-setup gnome-keyring gnome-keyring-pkcs11 gnome-logs \
gnome-mahjongg gnome-menus gnome-mines gnome-online-accounts \
gnome-power-manager gnome-screenshot gnome-session-bin gnome-session-canberra \
gnome-session-common gnome-settings-daemon gnome-settings-daemon-common \
gnome-shell gnome-shell-common gnome-shell-extension-appindicator \
gnome-shell-extension-desktop-icons gnome-shell-extension-ubuntu-dock \
gnome-startup-applications gnome-sudoku gnome-system-monitor gnome-terminal \
gnome-terminal-data gnome-themes-extra gnome-themes-extra-data gnome-todo \
gnome-todo-common gnome-user-docs gnome-user-docs-ru gnome-video-effects \
language-pack-gnome-en language-pack-gnome-en-base language-pack-gnome-ru \
language-pack-gnome-ru-base language-selector-gnome libgail18 libgail18 \
libgail-common libgail-common libgnome-autoar-0-0 libgnome-bluetooth13 \
libgnome-desktop-3-19 libgnome-games-support-1-3 libgnome-games-support-common \
libgnomekbd8 libgnomekbd-common libgnome-menu-3-0 libgnome-todo libgoa-1.0-0b \
libgoa-1.0-common libpam-gnome-keyring libsoup-gnome2.4-1 libsoup-gnome2.4-1 \
nautilus-extension-gnome-terminal pinentry-gnome3 yaru-theme-gnome-shell
```
<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/10remove-all-gui-app.JPG" alt="shamim4s" /> </p>


###### Step 07 : 
It will ask you for confirmation type 
```Y```

will take some time to remove all GUI applications..

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/11-it-will-ask-confirmation.JPG" alt="shamim4s" /> </p>

###### Step 08 : 
after finish your need to freeup your all unwanted spaces by this command

```
sudo apt autopurge
```

<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/12autopurge.JPG" alt="shamim4s" /> </p>

###### Step 09 : 
It will ask you for confirmation again type 
```Y```


<p align="left"> <img src="https://github.com/shamim4s/linux-guide/raw/master/assets/13autopurge-confirmation.JPG" alt="shamim4s" /> </p>


<br />
## Finally your Ubuntu is now Ubuntu Minimal version...


<br />



<br />



<br />




## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as approdd

## Licensedddddd
[MIT](https://choosealicense.com/licenses/mit/)