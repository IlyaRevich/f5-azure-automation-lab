#!/bin/bash

#Required Enviroment Variable
#AZURE_USERNAME=
#AZURE_PW
#AZ_USER_PW (This is the new user PW)


#Define Azure VARs
AZ_USER_PREFIX=student
AZ_USER_DOMAIN=stephenbrownf5.onmicrosoft.com
AZ_USER_PW=$2
AZ_ROLE=contributor
AZ_USER_NUM=$1

echo "Creating Users:"
echo "==============="
for USER in $(seq 1 $AZ_USER_NUM)
do
  DISPLAY_NAME="${AZ_USER_PREFIX}${USER}"
  USER_PRINCIPAL="$DISPLAY_NAME@$AZ_USER_DOMAIN"
  LOGIN=$(az login -u $AZURE_USERNAME -p $AZURE_PW)
  USER_CREDS=$(az ad user create --display-name $DISPLAY_NAME --user-principal-name $USER_PRINCIPAL --password $AZ_USER_PW --force-change-password-next-login false)
  ROLE=$(az role assignment create --assignee $USER_PRINCIPAL --role $AZ_ROLE)
  echo $USER_CREDS | jq .userPrincipalName -r
done

