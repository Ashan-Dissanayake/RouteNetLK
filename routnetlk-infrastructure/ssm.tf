# CloudWatch Agent Configuration

resource "aws_ssm_parameter" "cloudwatch_agent_config" {
  name        = "AmazonCloudWatchAgent-RouteNetLK"
  description = "CloudWatch Agent configuration for RouteNetLK EC2 instance"
  type        = "String"

  value = jsonencode({
    agent = {
      metrics_collection_interval = 300
      run_as_user                 = "root"
    }

    metrics = {
  namespace = "RouteNetLK/EC2"

  append_dimensions = {
    InstanceId = "$${aws:InstanceId}"
  }

  metrics_collected = {
    mem = {
      measurement = [
        "mem_used_percent"
      ]

      metrics_collection_interval = 300
    }

    disk = {
      measurement = [
        "used_percent"
      ]

      resources = [
        "/"
      ]

      metrics_collection_interval = 300
    }
  }
}
  })

  tags = {
    Name = "routnetlk-cloudwatch-agent-config"
  }
}



# Install CloudWatch Agent

resource "aws_ssm_association" "cloudwatch_agent_install" {
  name             = "AWS-ConfigureAWSPackage"
  association_name = "routnetlk-install-cloudwatch-agent"

  parameters = {
    action           = "Install"
    installationType = "Uninstall and reinstall"
    name             = "AmazonCloudWatchAgent"
    version          = "Latest"
  }

  targets {
    key    = "InstanceIds"
    values = [aws_instance.app_server.id]
  }
}


# Configure and Start CloudWatch Agent

resource "aws_ssm_association" "cloudwatch_agent_configure" {
  name             = "AmazonCloudWatch-ManageAgent"
  association_name = "routnetlk-configure-cloudwatch-agent"

  parameters = {
    action                        = "configure"
    mode                          = "ec2"
    optionalConfigurationSource   = "ssm"
    optionalConfigurationLocation = aws_ssm_parameter.cloudwatch_agent_config.name
    optionalRestart               = "yes"
  }

  targets {
    key    = "InstanceIds"
    values = [aws_instance.app_server.id]
  }

  depends_on = [
    aws_ssm_association.cloudwatch_agent_install
  ]
}
