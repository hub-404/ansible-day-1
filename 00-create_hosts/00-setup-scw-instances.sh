#!/bin/bash

INVENTORY_PATH=$( dirname $0 )

#echo '[digitalocean]' > ${INVENTORY_PATH}/hosts.do

#ansible-playbook -i hosts.setup 01-start-droplets.yml -vv -e "inventory_path=${INVENTORY_PATH}" 

env ANSIBLE_HOST_KEY_CHECKING=False ansible  -i ~/bin/scaleway_inventory -u root -m ping -f 10  -l ansible-training ansible-training -v

ansible-playbook -i ~/bin/scaleway_inventory -l ansible-training 02-setup-droplets.yml -v

ansible-playbook -i ~/bin/scaleway_inventory -l ansible-training 03-setup-droplets.yml -v
