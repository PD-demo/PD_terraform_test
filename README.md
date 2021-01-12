# Terraform task

## Pre-reqisits

To effectively execute this terraform modile, you'll need IAM account in AWS with access key and secret key. Also you'll need terraform version 0.12.0 or higher. In genedal, that's it. 
This is a test task, so all the results, states, etc will be stored locally.

NB. All the resources in this configuration will be created without tags. If you already have a complex environment, it can be a problem to track configuration results. It was done to reduce overall size of config file and make it easier to read (from author's point of view). The version with tags can be provided upon request.


## Execution

To run terraform configuration solution for AWS, you'll need to have terraform properly installed on your machine. Next step will be to go to the directory with configuretion files you have just saved.
Then run following terraform commands:
terraform init
terraform plan -out <your_name_of_plan>.tfplan (it will save your plan to the drive. You can review planned changes if you want)
terraform apply <your_name_of_plan>.tfplan

Terraform will apply changes to the environment and return publicly available dns record of LoabBalancer

NB wait for 3-5 minutes, it will take some time before the solution will became available

Use your browser to verify that you have an access to the solution. Every server has uuid on the index page, so if you've configured more that one instance in autoscaling group, you can try to refresh the page multiple times to verify that you reaching different instances

When you will be done with testing, run "terraform destroy" command to release resources.

## File with veriables

If you don't want to manually populate variables with values on every execution, you can create terraform.tfvar file
Example:


ws_access_key = "<your access key>"

aws_secret_key = "<your secret key>"

asg_desired_capacity = 2

asg_max_size = 3 

asg_min_size = 1

pp_root_volume_size = 2

log_volume_size = 5



## App server configuration

All the configuration steps for instance setup are stored in config.sh script. In general, it can be modified with any logic inside of it, but the part related to mapping of volumes is interfiring with template volume configuration in terraform config and with selected app server folder layour


