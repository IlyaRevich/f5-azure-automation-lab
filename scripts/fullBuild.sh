#!/bin/bash

#ansible-playbook ~/f5-azure-automation-lab/bigipClusterCreate/site.yml

ansible-playbook ~/f5-azure-automation-lab/coreosCreate/site.yml

ansible-playbook -i ~/f5-azure-automation-lab/coreosConfigure/azure_rm.py ~/f5-azure-automation-lab/coreosConfigure/site.yml

ansible-playbook -i ~/f5-azure-automation-lab/f5HelloWorld/azure_rm.py ~/f5-azure-automation-lab/f5HelloWorld/site.yml
