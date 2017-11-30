#!/bin/bash

INVENTORY_PATH=$( dirname $0 )

#echo '[digitalocean]' > ${INVENTORY_PATH}/hosts.do

#ansible-playbook -i hosts.setup 01-start-droplets.yml -vv -e "inventory_path=${INVENTORY_PATH}" 

ansible  -i ~/bin/scaleway_inventory -u root -m ping -f 1  -l ansible-training ansible-training -vv

ansible-playbook -i ~/bin/scaleway_inventory -l ansible-training 02-setup-droplets.yml -vv

ansible-playbook -i ~/bin/scaleway_inventory -l ansible-training 03-setup-droplets.yml -vv
