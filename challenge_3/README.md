##Challenge 2
#We have a nested object, we would like a function that you pass in the object and a key and get back the value. #How this is implemented is up to you.

#Example Inputs
#object = {“a”:{“b”:{“c”:”d”}}}
#key = a/b/c
#object = {“x”:{“y”:{“z”:”a”}}}
#key = x/y/z
#value = a


#Below instruction to execute the code:

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
- Go to `src` directory
  - `cd ec2-metadata-and-get-value/src`
  - `pip3 install requests`
  
- Run Challenge2 Script:
  - `python3 get_ec2_metadata.py`
  - `python3 get_data_key.py`

- Run Challenge3 Script:
  - `python3 challenge_2.py`
  
