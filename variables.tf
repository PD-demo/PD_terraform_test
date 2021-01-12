##################################################################################
# VARIABLES
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
  default = "us-east-2"
}

variable "network_address_space" {
  default = "10.0.0.0/16"
}

variable "asg_desired_capacity" {
  default = 1
}

variable "asg_max_size" {
  default = 1
}

variable "asg_min_size" {
  default = 1
}

variable "app_root_volume_size" {
  default = 1
}

variable "log_volume_size" {
  default = 1
}
