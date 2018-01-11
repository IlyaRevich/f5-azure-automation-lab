#!/bin/bash
#Required Enviroment Variable
#AZURE_USERNAME=
#AZURE_PW=

#Log into Azure and Output the SUbcription ID
LOGIN=$(az login -u $AZURE_USERNAME -p $AZURE_PW)


AZURE_USERS=$(az ad user list | jq .[].userPrincipalName -r)

for USER in $AZURE_USERS; 
do 
if [[ $USER == student* ]]; then 
	az ad user delete  --upn-or-object-id $USER
fi
done
