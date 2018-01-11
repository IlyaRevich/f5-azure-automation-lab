#!/bin/bash

#This Script deletes all Apps that start with student from the subscription.
#


#Required Enviroment Variable
#AZURE_USERNAME=
#AZURE_PW=
USER_PREFIX='http://stu'

#Log into Azure and Output the SUbcription ID
LOGIN=$(az login -u $AZURE_USERNAME -p $AZURE_PW)


AZURE_APPS=$(az ad app list | jq ".[] | .identifierUris[0]" -r)

for APP in $AZURE_APPS; 
do 
if [[ $APP == http://stu* ]]; then 
	az ad app delete  --id $APP
fi
#az ad user delete --upn-or-object-id $ID
done
