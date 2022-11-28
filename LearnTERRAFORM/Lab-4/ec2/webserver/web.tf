module "webserver" {
    source = "../../module/ec2"
    ami = ""
    key = ""
    subnet = ""
    securityids = ""
    ec2name = "Webserver"
    env = "Dev"
    project = "DevOps"
}