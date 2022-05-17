resource "aws_instance" "dev_ec2" {
  ami           = "ami-0022f774911c1d690"
  instance_type = var.instance_type
  tags = {
    "Name" = "bee-${local.instance_name}"
    "Env"  = "QA"
  }
  root_block_device {
    volume_size = "30"
    volume_type = "gp2"
    delete_on_termination = true
    
  }

}

variable "instance_type" {
  type        = string
  default     = "t3.medium"
  description = "Instance Type selection"
  #  sensitive = true

}
locals {
  instance_name = "cart-apd01"
}
output "ip" {
  value = aws_instance.dev_ec2.public_ip
  #sensitive = true

}
