variable region {
    description = "This is a aws region name"
    default = "us-east-2"
}

variable ec2count {
    default = "3"
}

variable ami {
    type = map(string)
    default = {
        us-east-2 = "ami-02d1e544b84bf7502"
        us-east-1 = "ami-skdjfisierwmsdlf"
    }
  
}

variable instancetype {
    default = "t2.micro"
}

variable key {
    default = "ec2key"
}

variable subnet {
    default = "subnet-02454f81f45b16e54"
}

variable securityids {
    type = list(string)
    default = ["sg-0f3804247b5f197fe"]
}
