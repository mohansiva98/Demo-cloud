resource "aws_iam_policy" "ecs_iam_admin_policy" {
  name        = "ecs-iam-admin-policy"
  description = "Allow ECS role & policy management"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "iam:*"
        ],
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "attach_ecs_admin_policy" {
  name       = "ecs-admin-attachment"
  users      = ["Mohan"]
  policy_arn = aws_iam_policy.ecs_iam_admin_policy.arn
}
