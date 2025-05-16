module "dev-app" {
    source = "./aws_infra"
    my-env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-084568db4383264d4"
    instance_count = 1
}

module "stagging-app" {
    source = "./aws_infra"
    my-env = "stagging"
    instance_type = "t2.medium"
    ami_id = "ami-084568db4383264d4"
    instance_count = 2
}

module "prod-app" {
    source = "./aws_infra"
    my-env = "prod"
    instance_type = "t2.large"
    ami_id = "ami-084568db4383264d4"
    instance_count = 3
}