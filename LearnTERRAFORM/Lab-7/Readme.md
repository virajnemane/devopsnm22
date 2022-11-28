## data source in Terraform

A data source is accessed via a special kind of resource known as a data resource, declared using a data block. In simple word, a data which is not available which we can import from other data source like cloud provider.

For example, you are creating a ec2 in DEV subnet with DEV security group. Till now we were giving subnet id and security group id directly in .tf file, which is not good from security point of view. In such scenario we can use data source to fetch subnet id and security group id from cloud provider.

i.e. You want to fetch subnet id.

    data "aws_subnet" "dev-subnet" {
    filter {
        name   = "tag:Name"
        values = ["DEV Public Subnet (AZ1)"]
    }    
    }

Above code will fetch detail of subnet who's Name tag is "DEV Public Subnet (AZ1)".

To checkout the value this data source carry, you can use below code to print on the screen.

    output "devsubnet" {
        value = data.aws_subnet.dev-subnet
    }

Let's implement this with our code.

- Create data.tf inside ec2/webserver. Refer [data.tf](./ec2/webserver/data.tf)
- Create local.tf to create local variable using data source. Refer [local.tf](./ec2/webserver/local.tf)
- Remove subnet and security group variable from variable.tf of ec2/webserver directory. Refer [variable.tf](./ec2/webserver/variable.tf)
- Instead of var use local for subnet and security group in web.tf inside ec2/webserver directory. Refer [web.tf](./ec2/webserver/web.tf)

------

For more information on data source in Terraform refer **https://www.terraform.io/language/data-sources**

------

Back to [LearnTerraform](../Readme.md)

Go to [Lab-8](../Lab-8/Readme.md)