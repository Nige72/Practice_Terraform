#!/bin/bash
# blank the tfvars file which will be created
echo -n "" > terraform.tfvars
# The environment queries
echo -n "Enter an environment that you would like to build:  "
read environment
environment="\"$environment\""
# The region queries
echo -n "Enter AWS region: "
read region
region="\"$region\""
# Prompt the user for VPC name
echo "Please enter the name for your VPC:"
read vpc_name
vpc_name="\"$vpc_name\""
# Write the variables named to a .tfvars file
for thing in \
environment vpc_name region\

do 
echo $thing=${!thing}>>terraform.tfvars
done
terraform init
terraform plan
#terraform apply 