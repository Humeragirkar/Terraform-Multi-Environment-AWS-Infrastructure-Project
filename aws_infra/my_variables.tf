variable "my-env" {
    description = "This is the environment for infra"
    type = string
}

variable "ami_id"{
    description = "This is AMI ID for eC2"
    type = string
}

variable "instance_type"{
    description = "Thid is the type of instance for ec2"
    type = string
}

variable "instance_count"{
    description = "This is the count of instance"
    type = number
}