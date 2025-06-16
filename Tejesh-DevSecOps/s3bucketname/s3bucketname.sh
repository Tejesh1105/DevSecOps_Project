#!/bin/bash

# Variables for reference only.
region1="us"
region2="eu"
asiapacific="ap"
africa="af"

# Check if region argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <region-prefix>"
  echo "Example: $0 us"
  exit 1
fi

# List S3 buckets, extract bucket names, and filter by region prefix
aws s3 ls | awk '{print $3}' | grep -E "${1}" > ./bucketnames.txt
