variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance."
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "The name tag for the instance."
  type        = string
}

variable "ebs_optimized" {
  description = "Whether the instance is optimized for EBS."
  type        = bool
  default     = false
}

variable "user_data" {
  description = "The user data to provide when launching the instance."
  type        = string
  default     = ""
}

variable "root_volume_size" {
  description = "The size of the root volume in GB."
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "The type of the root volume."
  type        = string
  default     = "gp2"
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
  default     = true
}



/*

variable "vpc_id" {
  description = "The VPC ID where the security group will be created."
  type        = string
}

*/

variable "name" {
    type = string
}
variable "environment" {
    type = string
}

variable "storage_class" {
    type = string
}

variable "days" {
    type = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for private subnets."
  type        = list(string)
}

variable "create_nat_gateway" {
  description = "Whether to create a NAT gateway."
  type        = bool
  default     = true
}
