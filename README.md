# Description
How it started?
- The 100 days of DevOps Journey begins today (March 17, 2022). I'll create folder for each day and will be adding each day progress in it.

## Terraform

- Starting with Terraform for Beginners course,  following https://kodekloud.com/courses/terraform-for-beginners/ from kodekloud.com. 

## Day001

You can find what I'd worked on [Day001](Terraform-Day001/)

## Day002

You can find what I'd worked on [Day002](Terraform-Day002/)

## Day003

Today, I did work about how to install terraform cli on MacOS using Homebrew package manager. You can find what I'd worked on [Day003](Terraform-Day003/)

I'd added how to install terraform cli on RHEL, CentOS, and Fedora Linux Systems using yum/dnf package manager on [Day003](Terraform-Day003)

## Day004

Today I'd worked on to create my first terraform file and got familiar with resource block and how to use variable in terraform file.

## Day005

Today I'd worked about Resource Attributes and Resource Dependencies in Terraform and What is difference between implicit and explicit dependency

## Day006

Today I did work on to understand how to get output variable and to use in another resource. Used below command to output variable value

```
terraform output
```

```
terraform output variable1
```

```
terraform output variabel2
```

## Day007

Today I did work how to create iam users using `aws_iam_users` resource and how to create s3 bucket using `aws_s3_bucket` and how to upload object to s3 bucket using `aws_s3_bucket_object` resource.

you can check terraform file at [Terraform-Day007](Terraform-Day007/)

## Day008

Today I did work following:
1. How to create aws dynamodb table using `aws_dynamodb_table` resource.
2. How to add item to dynamodb table using `aws_dynamodb_table_item` resource.
3. What is Remote State and State Locking
    * Remote State Backend with S3
        * S3 bucket will be used to store terraform.tfstate file.
    * DynamoDB table will be used for state-locking and consistency check
        * make sure that dynamodb table has to be create and primary key is set.
    

you can check the terraform file at [Terraform-Day008](Terraform-Day008/)

## Day009

Today I did work following:
1. How to use Remote State Backend with S3.
2. How to use AWS DynamoDB table for state locking.
3. Please refer to https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa#0054 page for more details managing terraform state file.

## Day010

Today I did work on how to provision:
1. EC2 Instance with using `aws_instance` resource
2. EIP provisioning using `aws_eip` resource
3. SSH key public key registeration to EC2 instance using `aws_key_pair` resource
4. Using provisioner `local-exec` or `remote-exec` to execute/copy local script/remote script
    * local-exec Provisioner
        The local-exec provisioner invokes a local executable after a resource is created. This invokes a process on the machine running Terraform, not on the resource.

## Day011
Today I did work on:
1. How to set logging for Terraform and save output to file using environment variable
2. How to import existing infra which are not created using terraform or not managed by terraform using `terraform import` command
3. What is Terrafor tainting

## Day012
Today I did work on:
1. How to Use terraform functions
    * Numeric Functions
    * String Functions
    * Collection Functions
    * Map Functions

## Day013

Today I did work on:
1. How to use `terraform validate` command to verification of the  configuration files. `terraform validate` command validates the resource block and the argument syntax but not the `values` the arguments expect for a specific resource.
2. Use `terraform fmt` command to format the terraform configuration file in canonical format and style.
3. Terraform LifeCycle Rules

```
resource "aws_instance" "example" {
  # ...

  lifecycle {
    create_before_destroy = true
  }
}
```
### Syntax and Arguments
`lifecycle` is a nested block that can appear within a resource block. The `lifecycle` block and its contents are meta-arguments, available for all `resource` blocks regardless of type.

* Use `create_before_destroy` (bool) lifecycle rule if you want terraform to create resource before deleting older one.
* Use `ignore_changes` lifecycle rule if certain changes to resources attributes to  be ignore by terraform while.
* Use `prevent_destroy` (bool) lifecycle rule prevents destroy of a resource


### Version Constraints

How to use a particular provider with version constraints
```
terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}
```
## Day014

Started to prepare for Hashicorp Terraform Associate Exam, following [this youtube tutotial](https://www.youtube.com/watch?v=V4waklkBC38) for certification preparation.
