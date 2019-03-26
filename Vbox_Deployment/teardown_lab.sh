#!/bin/bash

for i in ansible-host ansible-guest01 ansible-guest02 ansible-guest03;
do
	echo ""
	echo "Shutting down VM $i"
	echo ""
	VBoxManage controlvm $i poweroff
	echo ""
	echo "Waiting for VM to shutdown"
    sleep 10s
    echo ""
	echo "Unregister VM $i"
	echo ""
	VBoxManage unregistervm $i --delete
	echo ""
	echo "Deleteing Files for VM $i"
	echo ""
	rm -rf /Users/mkelly/VirtualBox\ VMs/$i
done