# Terraform scripts to build EC2 instances

## Introduction
This repo contains terraform scripts to demo Terraform. It creates a EC2 Instances, Security Group and add a simple web application to the EC2 instance.
The tool tfenv is used to fix the terraform version, see .terraform-version
for the current version.

## Setup
To run the terraform scripts you need to have AWS keys and aws-cli configured.

The system used to run Terraform was Ubuntu 18.04 so the following commands were run to install aws-cli and configure aws keys:

`sudo snap install aws-cli --classic`

`aws configure`

Credentials are stored in ~/.aws/
```
AWS_ACCESS_KEY_ID=...
AWS_SECRET_ACCESS_KEY=...
```
