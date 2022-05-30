resource "aws_iam_user" "initkloud_users" {
  for_each = toset(["ashupanwar19", "ashupanwar20"])
  name     = each.key
}