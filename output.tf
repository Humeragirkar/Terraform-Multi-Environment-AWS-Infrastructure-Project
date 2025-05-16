output "my_ec2_ip" {
    value = aws_instance.ec2instance.public_ip
}