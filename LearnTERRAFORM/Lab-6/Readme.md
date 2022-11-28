## Local in Terraform

Terraform have another block type called **local**. As per it's name it works only locally. Local values can be helpful to avoid repeating the same values or expressions multiple times in a configuration. It helpful to hide data. Also it help to store value by calling expression and variables.

Below is the way to create local variable.

    locals {
    
    locals {
    common_tags = {
        ManagedBy   = "Terraform"
        sdawsr = "HMT9090"
        }
    }

And this is how it get applied.

    resource "aws_instance" "webserver" {
        tags = local.common_tags
    }



Sometimes there are some requirement in organisation that every resource should have some particular tags. Below are some scenarios.
- If resource is managed by Terraform, it should have tag like **ManagedBy = "Terraform"**
- Our organisation talked with AWS, and aws ready to give 5% discount on each resource, but to identify those resource we need to add particular tag with some particular value i.e clientcode something like **sdawsr = "HMT9090"**

Also there are some tags we can implement inside module to make it compulsory to mention while creating resource because it will help organisation to track resources. 
For i.e.

    Application = APPNAME
    Owner = TEAMDL
    Project = PROJECTNAME

Lets implement above 2 scenarios with our ec2 module.

- create **local.tf** inside ec2 module. Refer [local.tf](./module/ec2/local.tf)
- add required variables in **variable.tf** inside ec2 module. Refer [variable.tf](./module/ec2/variable.tf)
- add tag parameter in **main.tf** of ec2 module. Refer [main.tf](./module/ec2/main.tf)
- define variable value in in **web.tf** inside ec2/webserver to apply it. Refer [web.tf](./ec2/webserver/web.tf)

You will observe 2 things
- Tags defined with values in locals.tf inside module, **can not be overwrite.**
- Tags defined with variable, **can be overwrite**. But that tag need to define as we have defined it inside module.

------

Back to [LearnTerraform](../Readme.md)

Go to [Lab-7](../Lab-7/Readme.md)