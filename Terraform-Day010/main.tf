resource "aws_instance" "cerberus" {
  #region = var.region
  instance_type = var.instance_type
  ami = var.ami
  key_name = "cerberus"

  #Please make sure that install-nginx.sh file exist or you can heredoc to pass user data script
  user_data = file("./install-nginx.sh")
}
resource "aws_key_pair" "cerberus-key" {
  key_name = "cerberus"
  #Please use the correct ssh key path
  public_key = file("/root/terraform-projects/project-cerberus/.ssh/cerberus.pub")
}
resource "aws_eip" "eip" {
    instance = aws_instance.cerberus.id 
    vpc = true
    provisioner "local-exec" {
        command = "echo ${aws_eip.eip.public_dns} >> /root/cerberus_public_dns.txt"
    }
}
