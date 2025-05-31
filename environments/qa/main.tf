module "vpc"{
    source = "../../modules/vpc"
    vpc_cidr = "10.0.0.0/16"
    subnet_cidr = "10.0.1.0/24"
    subnet_az = "${var.aws_region}a"
    env = "qa"
}

module "ec2"{ 
    source = "../../modules/ec2"
    ami_id = "ami-0af9569868786b23a"                          
    instance_type = "t2.micro"
    subnet_id = module.vpc.subnet_id
    ec2_count = 2
    env = "qa"
}