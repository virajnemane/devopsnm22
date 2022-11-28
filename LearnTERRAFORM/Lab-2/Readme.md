## What is TERRAFORM

Terraform is a language developed by Hashicorp which can be used to write a code to build Infrastructure. That is why it is know as Infrastructure as a code (IaC).

There are several tools available in the market for IaC, but terraform is more popular. There reasons are hidden under it's features.

Terraform has some features due to which it is most popular tool for IaC.
- Its FREE although it has Paid plans as well.
- Supported multiple providers
- Good documentation
- Easy to learn and maintain
- Platform Independent

## Why TERRAFORM

We have seen some good features of Terraform but the last feature **Platform Independent** make it most flexible tool.

Just imagine you have OTT or E-Commerce business which is running on 1000 of servers on AWS cloud platform. You are using cloudformation template, which is another IaC tool from AWS cloud provider. But by looking at cost factor, Org. decided to shift DR setup to AZURE platform. Now It is not possible to run your cloudformation templete in AZURE cloud platform. Terraform will really rescue tool in this scenario, as Terraform is platform independent tool, which will run AWS as well as on AZURE.

## Basic Concepts

Terraform code has some basic concepts which we need to understand before start doing actual coding.

- File extension – Terraform files have “.tf” extension, but apart from .tf files you will find “.tfvars” also. **.tfvars** file is a special file. It holds variable values. Its file name should be “terraform.tfvars” if it get created with some other name then it won’t work.

![basic-1](/images/terraform-basic-1.png)

- Modules – Terraform works on modules. Whenever we initialize terraform configuration it read configuration and as per our configuration it download modules. We can create custom modules also.

- BLOCK – Terraform code written in multiple types of BLOCK.

![block-1](/images/terraform-basic-block-1.png)

![block-2](/images/terraform-basic-block-2.png)

![block-3](/images/terraform-basic-block-3.png)

![block-4](/images/terraform-basic-block-4.png)

![block-5](/images/terraform-basic-block-5.png)

![block-6](/images/terraform-basic-block-6.png)

- State File – Terraform use state file to record status of current infrastructure. Terraform create state file after applying first terraform apply command. Terraform state file contain a current status of infrastructure. When we do terraform plan, because of state file, it able to identify the changes in the configuration which need to update current infrastructure.

By default state file get created locally, but it can be stored remotely also which is preferred way when infrastructure is managed by a team.

- Lock file – Terraform use lock file to avoid any accidents. The lock file is always named “.terraform.lock.hcl”. Terraform automatically creates or updates the dependency lock file each time you run the “terraform init” command.

Lock files is basically a logic to save us from accidental changes which can break your infrastructure. For example, you have created some resources using 1.40.0 version of azurerm and somebody changed version in configuration then below error it will show due to lock file.

![lock-file](/images/terraform-lock-file.png)

- Functions – Terraform has some build in function which help to write code.
- Variables – Terraform allow us to use variable which help to write generic code.

------

Back to [LearnTerraform](../Readme.md)

Go to [Lab-3](../Lab-3/Readme.md)