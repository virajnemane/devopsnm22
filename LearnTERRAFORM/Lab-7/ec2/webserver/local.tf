locals {
  
  security_groups = {
    DEV = [data.aws_security_group.dev-sg.id]
  }

  subnet_id = {
    DEV = data.aws_subnet.dev-subnet.id
  }

}