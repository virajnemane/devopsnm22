## Variables in Terraform

We can use variables in Terraform to make our code more generic and flexible. Variables also used to hide data from others.

We can use variable block to create variable in Terraform.
i.e.

    variable instancetype {
        default = "t2.micro"
    }

We need to add **var.** to use variable value in terraform.
i.e.

    instance_type          = var.instancetype

Sometimes one variable value is depend on another variable. For example, ami id is depend upon in which region we are creating ec2. So as per region, ami id get changed. We can use **map** function to resolve this issue.
i.e. - in resource block we can mention ami id like this.

    ami                    = var.ami[var.region]

i.e. - in variable block we can assign ami id like this.   

    variable ami {
        type = map(string)
        default = {
            us-east-2 = "ami-02d1e544b84bf7502"
            us-east-1 = "ami-skdjfisierwmsdlf"
        }
    }

## **count** function
Terraform provide some inbuild function which help us to write flexible codes.
**count** function is one of them. Suppose we need to create 3 identical ec2, but there names should be seen like "Webserver-1","Webserver-2","Webserver-3".

Here **count** function will help.
in resource block we can use count parameter to mention how many servers we want to create.

    count                  = var.ec2count    
    tags = {
        Name        = "webserver-${count.index+1}"
    }

Refer [terraform.tf](./terraform.tf)
Refer [prvider.tf](./provider.tf)
Refer [variable.tf](./variable.tf)
Refer [web.tf](./web.tf)     

------

Back to [LearnTerraform](../Readme.md)

Go to [Lab-4](../Lab-4/Readme.md)