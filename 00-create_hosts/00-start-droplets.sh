#!/bin/bash

INVENTORY_PATH=$( dirname $0 )

#echo '[digitalocean]' > ${INVENTORY_PATH}/hosts.do

#ansible-playbook -i hosts.setup 01-start-droplets.yml -vv -e "inventory_path=${INVENTORY_PATH}" 

ansible-playbook -i hosts.do 02-setup-droplets.yml -vv

ansible-playbook -i hosts.do 03-setup-droplets.yml -vv
