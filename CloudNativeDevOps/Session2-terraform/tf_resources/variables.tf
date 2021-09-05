variable "vpc_cird_block" {
  description = "vpc_cird_block"
  type        = string
  default     = "172.16.0.0/16"
}
variable "tags" {
  description = "tags"
  type        = string
  default     = "tf-example"
}
variable "subnet_cird_block" {
  description = "subnet_cird_block"
  type        = string
  default     = "172.16.10.0/24"
}
variable "subnet_availabilityZone" {
  description = "subnet_availabilityZone"
  type        = string
  default     = "us-east-2a"
}
# variable "subnet_availabilityZone" {
#   description = "subnet_availabilityZone"
#   type        = string
#   default     = "us-east-2a"
# }
variable "aws_network_interface_pvt_ip" {
  description = "aws_network_interface_pvt_ip"
  type        = string
  default     = "172.16.10.100"
}

variable "aws_instance_ami" {
  description = "aws_instance_ami"
  type        = string
  default     = "ami-000256c6b59e92ca8"
}

variable "aws_instance_instance_type" {
  description = "aws_instance_instance_type"
  type        = string
  default     = "t2.micro"
}

variable "aws_instance_cpu_credits" {
  description = "aws_instance_cpu_credits"
  type        = string
  default     = "unlimited"#"ami-000256c6b59e92ca8"
}

