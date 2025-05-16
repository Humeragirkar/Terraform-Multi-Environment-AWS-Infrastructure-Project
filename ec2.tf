# KeyPair 
resource "aws_key_pair" "kp" {
  key_name   = "terra-key"
  public_key = file("${path.module}/terra-key.pub")
}


# Default VPC
resource "aws_default_vpc" "defaultvpc"{

}

# Security Group
resource "aws_security_group" "sg"{
    name = "Allow SSH"
    description = "This SecurityGroup is open ports for ec2 instance"
    vpc_id = aws_default_vpc.defaultvpc.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

}

# EC2 Instance
resource "aws_instance" "ec2instance"{
    ami = var.ami_id
    instance_type = "t2.micro"
    key_name = aws_key_pair.kp.key_name
    security_groups = [aws_security_group.sg.name]
    tags = {
        Name = "terraform-automate"
    }

}