## Terraform Functions and Conditional Expressions && Terraform Workspace

## How to write module block

```
module "payroll_app" {
  # source = "absolute path or relative path"
  source = "/root/terraform-projects/modules/payroll-app"
  # Enter the following required arguments
  app_region = 
  ami        = 
}
```
