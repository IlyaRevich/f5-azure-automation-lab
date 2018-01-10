#!/bin/bash

#Required Enviroment Variable
#AZURE_USERNAME=
#AZURE_PW=

#Log into Azure and Output the SUbcription ID
LOGIN=$(az login -u $AZURE_USERNAME -p $AZURE_PW)

for ID in $(cat userIDs.txt); 
do 
echo "Deleteing $ID"
az ad user delete --upn-or-object-id $ID
done
mv userIDs.txt "userIDs.$(date +%F)"
