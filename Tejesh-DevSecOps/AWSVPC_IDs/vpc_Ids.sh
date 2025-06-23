#!/bin/bash

# Error-handling: Check if no arguments are provided.
if [ $# -eq 0 ]; then
  echo "Please provide arguments (AWS regions)."
  exit 1
fi

# Variable Declaration
REGIONS="$@"

# Check AWS CLI version to ensure it is installed.
if ! aws --version &>/dev/null; then
  echo "AWS CLI is not installed or not configured properly."
  exit 1
fi

# Command to execute multiple VPC queries using arguments.
for REGION in ${REGIONS}; do
  echo "Fetching VPCs for region: ${REGION}"
  aws ec2 describe-vpcs --region "${REGION}" | jq ".Vpcs[].VpcId" -r
  echo "********************************************************"
done

## If you want to send vpc data to a file replace above command with command given below.
#aws ec2 describe-vpcs --region "${REGION}" | jq ".Vpcs[].VpcId" -r > vpc_ids.txt

