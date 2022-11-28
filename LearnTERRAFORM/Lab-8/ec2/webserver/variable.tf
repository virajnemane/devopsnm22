variable "instance_count" {
  type = map(string)
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

