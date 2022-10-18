## How to use this code

Follow the below instructions to deploy infrastructure using this code:

- Clone the code using following:
- Make sure you have installed AWS CLI on your PC. If not, download from the following link:
  https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html
- Configure AWS credentials by opening cmd and running following command:
  `aws configure`
- Code uses AWS cred file so make sure you have AWS cred file stored in following windows path:
  `%USERPROFILE%\.aws\credentials`

- Install Python 3 and git on your instance
  - `sudo yum install python3 git`
- Clone this repository
  - `git clone https://github.com/dkp-challenge/code-assignment.git`
- Install below
  - `sudo pip3 install pipenv`

- Go to repository directory on your instance
  - `cd ec2-metadata-and-get-value`
- Install project dependencies
  - `pipenv install`
- Go to `challenge2` directory
  - python 3 `challenge_2.py`
  
