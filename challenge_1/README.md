Code challenge1

Repository to store and share code to deploy a 3 tier application components. The source code will create the infratrustructure on cloud(aws) and make the platform ready for deployment of application. Following resources shall be created once the code is run:

- VPC
    :Private 
    :Public subnets
- Load balancer with an autoscaling group
- Storage: Elastic file system

## Requirements
Name | Version
---------|-------
Terraform | v0.12 or above
AWS Provider	| v2.42 or above

## Design requirements considered

Using Terraform V12, build a aws MVC  module meant to deploy a web application that supports the following design:

- It must include a VPC which enables future growth / scale

- It must include both a public and private subnet – where the private subnet is used for compute and the public is used for the load balancers

- Postgress RDS instance should be created to store data and should be allowed connectivity from application and from jumpbox.
  
- Assuming that the end-users only contact the load balancers and the underlying instance are accessed for management purposes, design a security group scheme which supports the minimal set of ports required for communication.

- The AWS generated load balancer hostname with be used for request to the public facing web application.

- An autoscaling group should be created which utilizes the latest AWS AMI

- The instance in the ASG

	 - Must contain both a root volume to store the application / services

	- Must contain a secondary volume meant to store any log data bound from / var/log

	- Must include a web server of your choice.

- All requirements in this task of configuring the operating system should be defined in the launch configuration and/or the user data script (no external config tools like chef, puppet, etc)
- Your module should not be tightly coupled to your AWS account – it should be designed to that it can be deployed to any arbitrary AWS account



## How to use this code

Follow the below instructions to deploy infrastructure using this code:

- Clone the code using following:
- Make sure you have installed AWS CLI on your PC. If not, download from the following link:
    https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
- Configure AWS credentials by opening cmd and running following command:
 `aws configure`
 - Code uses AWS cred file so make sure you have AWS cred file stored in following windows path:
  `%USERPROFILE%\.aws\credentials`
  - Open CMD, go to the path where the main.tf file is stored and run following command to initialise and download Terraform module and plugins
   `terraform init`
   - Run following commands to see the deployment plan and to deploy infrastructure respectively
    `terraform plan` (Verify the plan)
    `terraform apply` (Enter yes when asked whether to deploy or not)

## Code directory structure
![enter image description here]()

## Areas of improvement
- This code uses a hardcoded password which should be fetched from a credentials manager like Hashicord Vault or AWS secret manager
- A map can be used to bind the region and the AZs which is then can be fed to the module that creates vpc.
- Cloudwatch alarms can be created monitoring CPU utlisation, responses from the web server etc.
- Based of the cloudwatch alarms autoscaling policies can be set to increase and decrease the number of servers.
- AMI can be created to decrease the startup time of the webservers.
- At the moment userdata uses shell scripts however using something like cloud-init would be better.

## Changelog
Version | Comment
---------|-------
1.0 | Initial commit
