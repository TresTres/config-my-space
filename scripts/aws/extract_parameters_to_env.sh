#!/bin/bash
# Invoke with . ./extract_parameters_to_env.sh ENV_VAR PARMETER LOCATION
# Extracts paremeter from AWS SSM and sets it as an environment variable


PARAM_NAME=$1 
PARAM_LOC=$2  # e.g. /agathos/db-manager/lee/migrator
eval "export $PARAM_NAME=`aws ssm get-parameter --name $PARAM_LOC --with-decryption --query "Parameter.Value" --output text`"
eval "echo $PARAM_NAME=\$$PARAM_NAME"

