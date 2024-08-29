module "s3-bucket"{
    source = "E:\\TERRAFORM\\modules\\S3"
    name = var.name
    environment = var.environment
    days = var.days
    storage_class = var.storage_class
}


module "vpc" {
  source                = "E:\\TERRAFORM\\modules\\VPC"
  cidr_block            = var.cidr_block
  vpc_name              = var.vpc_name
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  create_nat_gateway    = true
}


output "instance_id" {
  value = module.ec2_instance.instance_id
}


module "ec2_instance" {
  source              = "E:\\TERRAFORM\\modules\\EC2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  subnet_id           = module.vpc.public_subnet_ids[0]
  #security_groups     = ["sg-09c390051f90e3158"]
  instance_name       = var.instance_name
  ebs_optimized       = true
  #user_data           = file("init-script.sh")
  root_volume_size    = 20
  root_volume_type    = "gp3"
  associate_public_ip = true
  #network_interface_id = ""  # Specify if you have an additional network interface
  #security_group_name   = "my-security-group"
  #security_group_description = "A security group for my instances."
  vpc_id                = module.vpc.vpc_id
}




/*

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}

output "private_ip" {
  value = module.ec2_instance.private_ip
}

*/

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}


output "s3_arn" {
  value       = module.s3-bucket.s3_arn
  description = "The id of S3"
}