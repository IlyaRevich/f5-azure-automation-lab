#!/bin/bash

#Student Script#

#This Script Creates an Azure Service Principal for Rbac based on the provided Azure Uswername.
#If student does not have a USERNAME and Password they should ask the instructor for one. 

#Required Enviroment Variable
#AZURE_USERNAME=
#AZURE_PW=

#Set Username to be created
export AZURE_STUDENT="$(echo $AZURE_USERNAME | awk -F'@' '{print $1}')"
SP_NAME="$(echo $AZURE_USERNAME | awk -F'@' '{print $1}')-App"
SP_PASSWORD=$(uuidgen)

#Log into Azure and Output the SUbcription ID
AZURE_SUBSCRIPTION_ID=$(az login -u $AZURE_USERNAME -p $AZURE_PW | jq '.[0] .id' --raw-output)
AZURE_SUBSCRIPTION_ID="export AZURE_SUBSCRIPTION_ID=${AZURE_SUBSCRIPTION_ID}"

#GET Tenat  ID
AZURE_TENANT=$(az account list | jq '.[0] .tenantId' --raw-output)
AZURE_TENANT="export AZURE_TENANT=${AZURE_TENANT}"

#Create new SP
AZURE_CLIENT_ID=$(az ad sp create-for-rbac --name $SP_NAME --password $SP_PASSWORD | jq '.appId' --raw-output)
AZURE_CLIENT_ID="export AZURE_CLIENT_ID=${AZURE_CLIENT_ID}"
AZURE_SECRET="export AZURE_SECRET=$SP_PASSWORD"


#Response sent to client
echo "Cut and Paste the SP ENV Variables"
echo "=================================="
echo $AZURE_SUBSCRIPTION_ID
echo $AZURE_TENANT
echo $AZURE_CLIENT_ID
echo $AZURE_SECRET

