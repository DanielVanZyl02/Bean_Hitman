
resource "aws_iam_role" "ssm-role" {
  name = "ssm-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Effect = "Allow"
        Sid = ""
      }

    ]
  })
}

resource "aws_iam_policy" "ssm-policy" {

  name = "ssm-policy"
  description = "Allow ssm"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "ssm:DescribeAssociation",
          "ssm:GetDeployablePatchSnapshotForInstance",
          "ssm:GetDocument",
          "ssm:DescribeDocument",
          "ssm:GetManifest",
          "ssm:GetParameter",
          "ssm:GetParameters",
          "ssm:ListAssociations",
          "ssm:ListInstanceAssociations",
          "ssm:PutInventory",
          "ssm:PutComplianceItems",
          "ssm:PutConfigurePackageResult",
          "ssm:UpdateAssociationStatus",
          "ssm:UpdateInstanceAssociationStatus",
          "ssm:UpdateInstanceInformation"
        ],
        "Resource": "*"
      },
      {
        "Effect": "Allow",
        "Action": [
          "ssmmessages:CreateControlChannel",
          "ssmmessages:CreateDataChannel",
          "ssmmessages:OpenControlChannel",
          "ssmmessages:OpenDataChannel"
        ],
        "Resource": "*"
      },
      {
        "Effect": "Allow",
        "Action": [
          "ec2messages:AcknowledgeMessage",
          "ec2messages:DeleteMessage",
          "ec2messages:FailMessage",
          "ec2messages:GetEndpoint",
          "ec2messages:GetMessages",
          "ec2messages:SendReply"
        ],
        "Resource": "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm-attachment" {
  policy_arn = aws_iam_policy.ssm-policy.arn
  role       = aws_iam_role.ssm-role.name
}

resource "aws_iam_instance_profile" "ssm-profile" {

  name = "SSM-Profile"
  role = aws_iam_role.ssm-role.name
}

resource "aws_iam_policy" "rds-policy" {
  name = "rds-policy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "rds:Connect"
        ],
        Effect = "Allow"
        Resource = "*"
      },


    ]
  })
}

resource "aws_iam_role_policy_attachment" "rds-attachment" {
  policy_arn = aws_iam_policy.rds-policy.arn
  role       = aws_iam_role.ssm-role.name
}