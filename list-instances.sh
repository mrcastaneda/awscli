#!/bin/bash 

echo "List ..."


for region in $(aws ec2 describe-regions --query "Regions[*].[RegionName]" --output text)
do

echo "$region"
aws ec2 describe-instances --region "$region" 

done

wait



  
