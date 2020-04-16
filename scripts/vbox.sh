#!/bin/bash

sudo VBoxManage modifyvm "monkey" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
sudo VBoxManage setextradata "monkey" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
sudo VBoxManage setextradata "monkey" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
sudo VBoxManage setextradata "monkey" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
sudo VBoxManage setextradata "monkey" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
sudo VBoxManage setextradata "monkey" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1