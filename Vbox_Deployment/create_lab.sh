#!/bin/bash

for i in ansible-host ansible-guest01 ansible-guest02 ansible-guest03;
do
    echo "Cloning VM $i"
    echo ""
    VBoxManage clonevm base --basefolder /Users/mkelly/VirtualBox\ VMs/$i --name $i --register
    echo "Starting VM $i"
    VBoxManage startvm $i
done
