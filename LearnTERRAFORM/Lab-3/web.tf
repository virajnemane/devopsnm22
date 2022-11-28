resource "aws_instance" "web" {
  count                  = var.ec2count
  ami                    = var.ami[var.region]
  instance_type          = var.instancetype
  key_name               = var.key
  subnet_id              = var.subnet
  vpc_security_group_ids = var.securityids
  tags = {
    Name        = "webserver-${count.index+1}"
    ManagedBy   = "Terraform"
    Environment = "DEV"
    Project     = "DevOps"
  }
}