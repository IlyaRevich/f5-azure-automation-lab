#!/bin/bash

ansible-playbook ~/f5-azure-automation-lab/bigipClusterCreate/site.yml

ansible-playbook ~/f5-azure-automation/coreosCreate/site.yml

ansible-playbook -i ~/f5-azure-automation/coreosConfigure/azure_rm.py ~/f5-azure-automation/coreosConfigure/site.yml

ansible-playbook -i ~/f5-azure-automation/f5HelloWorld/azure_rm.py ~/f5-azure-automation/f5HelloWorld/site.yml
