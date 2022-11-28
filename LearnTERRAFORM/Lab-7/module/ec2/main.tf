resource "aws_instance" "ec2instance" {
  ami                    = var.ami
  instance_type          = var.instancetype
  key_name               = var.key
  subnet_id              = var.subnet
  vpc_security_group_ids = var.securityids
  tags = {
    Name        = var.ec2name
    ManagedBy   = "Terraform"
    Environment = var.env
    Project     = var.project
  }
}