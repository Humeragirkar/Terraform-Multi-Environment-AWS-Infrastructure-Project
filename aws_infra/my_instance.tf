#EC2 instance

resource "aws_instance" "ec2instance"{
    count = var.instance_count
    ami = var.ami_id
    instance_type = var.instance_type
    #key_name = aws_key_pair.kp.key_name
    #security_groups = [aws_security_group.sg.name]
    tags = {
        Name = "${var.my-env}-terraform-automate"
    }

}