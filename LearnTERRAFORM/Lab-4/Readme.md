## Module in Terraform

By default Terraform use ROOT module. But Terraform allow us to create our custome module.

Module in terraform works just as function in programming. We write function in programming to avoid repeatative code, and make code less complicated and make it easy to understand. Module also do the same thing in Terraform.

In Lab-3, we saw how we can create EC2 instance in AWS cloud. We will use same to code to extend little bit and will use module to create EC2 instance.

We will first create module for EC2 instance and then we will use that module to create EC2 instance.

To maintain code in systamatic manner, we will follow below tree structure.

![dir-struct](/images/terraform-module-dir-struct.PNG)  

**ROOTDIR** --> This will be your main directory under which you will maintain your terraform code. Generally you will maintain terraform code in git repo. So when you clone your repo, it will create directory which our reponame. That will be your ROOTDIR.
**ROOTDIR/module** directory will hold terraform modules, like we are creating ec2 module.
**ROOTDIR/module/ec2** directory will hold module for ec2 instance.
**ROOTDIR/ec2** directory will hold terraform code of all ec2 instances.
**ROOTDIR/ec2/webserver** directory will hold terraform code for webserver ec2 instances.

Generally there are 3 files you will find inside module.
main.tf --> will hold actually code for resource, in our case ec2 instance.
variable.tf --> will hold variable refered in main.tf.
output.tf --> will print one of the attribute of resource created.

**Note** - No need of provider and terraform block in module, as we are not going to run init, plan or apply command inside module. Module is just a blue print of resource. Just like function in programming. We define function, but it only work once it get called. Same here, inside module directory we are creating module, but we are going to use that module inside webserver directory.

Refer ec2 module files here.
- Refer [main.tf](./module/ec2/main.tf)
- Refer [variable.tf](./module/ec2/variable.tf)
- Refer [output.tf](./module/ec2/output.tf)

Refer terraform code to call module.
- Refer [provider.tf](./ec2/webserver/provider.tf)
- Refer [terraform.tf](./ec2/webserver/terraform.tf)
- Refer [web.tf](./ec2/webserver/web.tf)

------

There are readymade modules available on terraform registry, which you can use to save your time.

Terraform registry - https://registry.terraform.io/

Terraform registry for aws proviter - https://registry.terraform.io/providers/hashicorp/aws

Let's create vpc by using vpc moudle from terraform registry.
- Create **vpc/test-vpc** directory in main(ROOTDIR). Create **test-vpc.tf** inside **ROOTDIR/vpc/test-vpc** 
- Refer **Usage** section in *https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest* to create **test-vpc.tf**
    - Replace **my-vpc** with **test-vpc**
    - Change cidr if you are already using **10.0.0.0/16** range in any existing vpc.
    - Replace **eu-west-1** with your region.
    - Replace **true** with **false** for *enable_vpn_gateway*
    - Your final test-vpc.tf will look like this. Refer [test-vpc.tf](./vpc/test-vpc/test-vpc.tf)
- Create **provider.tf** and **terraform.tf** which you can copy from webserver directory.

**Note** - Once you run terraform init it will download module from terraform registry and will save it inside **.terraform** directory. If you want it inside module directory created by us then you can clone that module inside module directory before executing terraform init and make change in source path in test-vpc.tf

------

Back to [LearnTerraform](../Readme.md)

Go to [Lab-5](../Lab-5/Readme.md)