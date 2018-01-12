# Launch the Super NetOps Container
`docker run -p 8080:80 -p 2222:22 -it -e SNOPS_AUTOCLONE=0 f5devcentral/f5-super-netops-container:base`

# Clone the lab repo from github
```
[root@f5-super-netops] [/] # cd ~
[root@f5-super-netops] [~] # git clone https://github.com/stjbrown/f5-azure-automation-lab.git          
```
>Cloning into 'f5-azure-automation-lab'...
>remote: Counting objects: 61, done.
>remote: Compressing objects: 100% (42/42), done.
>remote: Total 61 (delta 12), reused 55 (delta 9), pack-reused 0
>Unpacking objects: 100% (61/61), done.

# Run start script
```
[root@f5-super-netops] [~] # cd f5-azure-automation-lab/
[root@f5-super-netops] [~/f5-azure-automation-lab] # source start
```

# Create ENV Variables for Admin Creds
```
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # export AZURE_USERNAME=studentX@xxxxxxxxxxxxx.onmicrosoft.com
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # export AZURE_PW=XXXXXXXXXXX
```

# Run spCreate Script
```
[root@f5-super-netops] [~/f5-azure-automation-lab] # cd scripts/
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # ./spCreate.sh
```
>Retrying role assignment creation: 1/36
>Retrying role assignment creation: 2/36
>Retrying role assignment creation: 3/36
>Cut and Paste the SP ENV Variables
>==================================
>export AZURE_SUBSCRIPTION_ID=4e4c24c8-dfd7-4bdf-9ab1-6018323b1560
>export AZURE_TENANT=21455af6-ea20-4b30-a9fe-482dba055e0f
>export AZURE_CLIENT_ID=b11ec692-464b-4119-814f-72d355744598
>export AZURE_SECRET=f97eb2b6-fbc9-4487-8cdc-3391072d50e8


# Edit VARs for ANSIBLE Playbook - In lab we would explore the roles etc.
```
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # cd ~/f5-azure-automation-lab/asmLab/roles/f5-standalone-3nic-new-stack-payg/vars/
[root@f5-super-netops] [~/f5-azure-automation-lab/asmLab/roles/f5-standalone-3nic-new-stack-payg/vars] # vi main.yml
```

# Run the Ansible Playbook
```
[root@f5-super-netops] [~/f5-azure-automation-lab/asmLab/roles/f5-standalone-3nic-new-stack-payg/vars] # cd ~/f5-azure-automation-lab/asmLab/
[root@f5-super-netops] [~/f5-azure-automation-lab/asmLab] # ansible-playbook site.yml
```

