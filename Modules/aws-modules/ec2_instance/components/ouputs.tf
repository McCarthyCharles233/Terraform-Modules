output "instance_id" {
    value = aws_instance.ec2-instance.id
}

output "arn" {
  value = aws_instance.ec2-instance.arn
}

output "private-ip" {
    value = aws_instance.ec2-instance.private_ip
}

output "public-ip" {
    value = aws_instance.ec2-instance.public_ip
}