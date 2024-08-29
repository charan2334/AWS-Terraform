ami_id= "ami-02b49a24cfb95941c"
instance_type="t2.micro"
key_name="dev-miq"
instance_name="dev-miq"


environment="development"
name="miq-bucket"
days="30"
storage_class="STANDARD_IA"

cidr_block="10.0.0.0/16"
vpc_name="dev-miq"
public_subnet_cidrs= ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs= ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

