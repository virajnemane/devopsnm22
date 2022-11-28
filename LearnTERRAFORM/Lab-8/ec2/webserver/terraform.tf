terraform {
    required_version = "1.2.5"
    backend "s3" {
    bucket = "nilesh-terraform-state"
    key    = "ec2/wbeserver.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform_state"
    }    
}