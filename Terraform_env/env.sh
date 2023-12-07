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
# Spin up an instance
echo -e 'What is the name that you would like for your instance:\nThis will be a t2.micro.instance as it is free tier eligible'
read instance_name
instance_name="\"$instance_name\""
# Write the variables named to a .tfvars file
for thing in \
environment region vpc_name instance_name  \

do 
echo $thing=${!thing}>>terraform.tfvars
done
terraform init
terraform plan
#terraform apply 