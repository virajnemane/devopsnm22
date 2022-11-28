locals {
  common_tags = {
    Name = var.ec2name
    ENV = var.env
    Application = var.appname
    Owner = var.owner
    Backup = var.backup
    Project = var.project     
    ManagedBy   = "Terraform"
    sdawsr = "HMT9090"
  }
}