variable "instance_count" {
  type = map(number)
  default = {
    DEV         = 1
    PROD        = 1
  }
}

variable "ami_id" {
  type = map(string)
  default = {
    DEV         = "ami-051dfed8f67f095f5"
    PROD        = "ami-051dfed8f67f095f5"
  }
}

variable "instance_type" {
  type = map(string)
  default = {
    DEV         = "t2.micro"
    PROD     = "t2.medium"
  }
}

variable "subnet_id" {
  type = map(string)
  default = {
    DEV         = "subnet-05a3e2383cca60785"
    PROD         = "subnet-0e092651dd62f0834"
  }
}

variable "security_groups" {
    type = map(list(string))
  default = {
    DEV = ["sg-00fe219ee7fbd036e"]
    PROD = ["sg-00b7489b24d86e989"]
    }
}

