#!/bin/bash

# Variables
REGION_ID="ap-northeast-1"               # Replace with your region ID
CONTAINER_GROUP_NAME="xyz"    # Replace with your ECI instance name

# Fetch ECI details and filter by name
RESULT=$(aliyun eci DescribeContainerGroups --RegionId $REGION_ID | jq -r '.ContainerGroups[] | select(.ContainerGroupName == "'$CONTAINER_GROUP_NAME'") | .Status')

# Check if the result is empty
if [[ -z "$RESULT" ]]; then
  echo "not exist"
else
  echo "$RESULT"
fi
