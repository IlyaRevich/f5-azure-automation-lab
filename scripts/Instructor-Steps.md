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
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # export AZURE_USERNAME=user@xxxxxxxxxxxxx.onmicrosoft.com
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # export AZURE_PW=XXXXXXXXXXX
```

# Run the User Create Script
```
[~/f5-azure-automation-lab] # cd ~/f5-azure-automation-lab/scripts
[root@f5-super-netops] [~/f5-azure-automation-lab/scripts] # ./userCreate.sh <number of users here> <password here>
```
>Creating Users:
>===============
>student1@xxxxxxxxxxxxxx.onmicrosoft.com
>student2@xxxxxxxxxxxxxx.onmicrosoft.com
>student3@xxxxxxxxxxxxxx.onmicrosoft.com
>student4@xxxxxxxxxxxxxx.onmicrosoft.com
>student5@xxxxxxxxxxxxxx.onmicrosoft.com

