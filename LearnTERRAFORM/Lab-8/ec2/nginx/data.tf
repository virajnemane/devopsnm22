data "aws_security_group" "dev-sg" {
        name = "DEV Public SG"
}

#output "devsg" {
#    value = data.aws_security_group.dev-sg
#}

data "aws_subnet" "dev-subnet" {
  filter {
    name   = "tag:Name"
    values = ["DEV Public Subnet (AZ1)"]
  }    
}

#output "devsubnet" {
#    value = data.aws_subnet.dev-subnet
#}