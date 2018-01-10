#!/bin/bash

#Install Ansible & azure
apk update
apk add gcc git libffi-dev musl-dev openssl-dev perl py-pip python python-dev sshpass jq util-linux
pip install --upgrade pip
pip install git+git://github.com/ansible/ansible.git@stable-2.4
pip install ansible[azure] bigsuds f5-sdk netaddr deepdiff ansible-lint ansible-review
pip install azure-cli

#Add dev module bigip_node.py
cd ~
git clone https://github.com/F5Networks/f5-ansible -b devel
cp ~/f5-ansible/library/. /usr/lib/python2.7/site-packages/ansible/modules/network/f5/

#Add my git email for dev
git config --global user.email "stjbrown@gmail.com"
