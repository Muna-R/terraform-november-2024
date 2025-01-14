resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb1.name,
    aws_iam_user.lb2.name,
  ]

  group = aws_iam_group.lb-group.name
}

resource "aws_iam_group" "group" {
  name = "test-group"
}


resource "aws_iam_user" "lb1" {
  name = "loadbalancer-2"
}

resource "aws_iam_user" "lb2" {
  name = "loadbalancer-3"
}

resource "aws_iam_group" "lb-group" {
  name = "developers"
}