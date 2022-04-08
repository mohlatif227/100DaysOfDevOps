resource "aws_iam_user" "users" {
    #name = "Marry"
    name = var.project-sapphire-users[count.index]
    count = length(var.project-sapphire-users)
  
}

output "user_arn" {
    value = aws_iam_user.users.*.arn
}
