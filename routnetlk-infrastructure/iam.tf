# IAM Role for EC2
resource "aws_iam_role" "ec2_monitoring_role" {
  name = "routnetlk-ec2-monitoring-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "routnetlk-ec2-monitoring-role"
  }
}

# Allow EC2 to be managed through AWS Systems Manager
resource "aws_iam_role_policy_attachment" "ssm" {
  role       = aws_iam_role.ec2_monitoring_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# Allow CloudWatch Agent to send metrics and logs
resource "aws_iam_role_policy_attachment" "cloudwatch_agent" {
  role       = aws_iam_role.ec2_monitoring_role.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

# Instance Profile for EC2
resource "aws_iam_instance_profile" "ec2_monitoring" {
  name = "routnetlk-ec2-monitoring-profile"
  role = aws_iam_role.ec2_monitoring_role.name
}