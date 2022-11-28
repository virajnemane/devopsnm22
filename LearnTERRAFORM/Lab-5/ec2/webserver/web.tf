module "webserver" {
    source          = "../../module/ec2"
    #count           = (terraform.workspace == "DEV" || terraform.workspace == "PROD") ? 1 : 0
    count           = lookup(var.instance_count, terraform.workspace)
    ami             = lookup(var.ami_id, terraform.workspace, "undefined")
    instancetype   = lookup(var.instance_type, terraform.workspace, "undefined")
    key             = "tata-${terraform.workspace}"
    subnet          = lookup(var.subnet_id, terraform.workspace, "undefined")
    securityids     = lookup(var.security_groups, terraform.workspace)
    ec2name         = "${terraform.workspace}-Webserver"
    env             = "${terraform.workspace}"
    project         = "DevOps"
}