variable "availability_zones" {
  description = "List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created. RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next Terraform apply"
  type        = list(string)
  default     = [""]
}

# variable "project" {
#   default = ""
# }

variable "environment" {
  default = "dev"
}

variable "instance_type" {
  default = "t2.micro"
  
}

variable "ec2-instance-name" {

  default = "jenkins-server"
}

variable "ami" {
  default = "ami-0ad21ae1d0696ad58"
  
}

variable "key_name" {
  description = "VPC ID where the security group will be created"
  type        = string
  default = "jenkins-kp"
}

variable "global_tags" {
  description = "AWS tags that will be added to all resources managed herein"
  type = map(string)
  default = {
  }
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks to allow inbound traffic."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ingress_ports" {
  description = "List of ports to allow inbound traffic."
  type        = list(number)
  default     = [22, 8080]
}

variable "security_group_name" {
  description = "The name of the security group."
  type        = string
  default     = "jenkins-security-group"
}