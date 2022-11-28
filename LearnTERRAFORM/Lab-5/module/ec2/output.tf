output "ec2instanceid" {
    description = "Instance id"
    value = aws_instance.ec2instance.id
}