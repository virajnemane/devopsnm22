variable ami {}

variable instancetype {
    default = "t2.micro"
}

variable key {}

variable subnet {}

variable securityids {
    type = list(string)
}

variable "ec2name" {}

variable "env" {}

variable "project" {}
