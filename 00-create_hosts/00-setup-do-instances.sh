#!/bin/bash

if ! [ -f hosts ] ; then
	echo "Create hosts file, please"
	exit
fi

export ANSIBLE_HOST_KEY_CHECKING=False
env ANSIBLE_HOST_KEY_CHECKING=False ansible  -i hosts -u root -m ping -f 10  -l ansible-training ansible-training -v


ansible-playbook -i hosts -l ansible-training 03-setup-droplets.yml -v
