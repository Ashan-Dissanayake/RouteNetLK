resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name        = "routnetlk-ec2-high-cpu"
  alarm_description = "Triggers when EC2 CPU utilization exceeds 80%"

  namespace          = "AWS/EC2"
  metric_name        = "CPUUtilization"
  statistic          = "Average"
  period             = 300
  evaluation_periods = 1

  threshold           = 80
  comparison_operator = "GreaterThanThreshold"

  dimensions = {
    InstanceId = aws_instance.app_server.id
  }

  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "high_memory" {
  alarm_name        = "routnetlk-ec2-high-memory"
  alarm_description = "Triggers when EC2 memory utilization exceeds 80%"

  namespace          = "RouteNetLK/EC2"
  metric_name        = "mem_used_percent"
  statistic          = "Average"
  period             = 300
  evaluation_periods = 1

  threshold           = 80
  comparison_operator = "GreaterThanThreshold"

  dimensions = {
    InstanceId = aws_instance.app_server.id
  }

  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "high_disk" {
  alarm_name        = "routnetlk-ec2-high-disk"
  alarm_description = "Triggers when root disk utilization exceeds 80%"

  namespace          = "RouteNetLK/EC2"
  metric_name        = "disk_used_percent"
  statistic          = "Average"
  period             = 300
  evaluation_periods = 1

  threshold           = 80
  comparison_operator = "GreaterThanThreshold"

  dimensions = {
    InstanceId = aws_instance.app_server.id
    device     = "nvme0n1p1"
    fstype     = "ext4"
    path       = "/"
  }

  treat_missing_data = "missing"
}

resource "aws_cloudwatch_dashboard" "routnetlk" {
  dashboard_name = "routnetlk-monitoring"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "EC2 CPU Utilization"
          region = "ap-south-1"

          metrics = [
            [
              "AWS/EC2",
              "CPUUtilization",
              "InstanceId",
              aws_instance.app_server.id
            ]
          ]

          period  = 300
          stat    = "Average"
          view    = "timeSeries"
          stacked = false
        }
      },

      {
        type   = "metric"
        x      = 0
        y      = 6
        width  = 12
        height = 6

        properties = {
          title  = "EC2 Memory Utilization"
          region = "ap-south-1"

          metrics = [
            [
              "RouteNetLK/EC2",
              "mem_used_percent",
              "InstanceId",
              aws_instance.app_server.id
            ]
          ]

          period  = 300
          stat    = "Average"
          view    = "timeSeries"
          stacked = false
        }
      },

      {
        type   = "metric"
        x      = 0
        y      = 12
        width  = 12
        height = 6

        properties = {
          title  = "EC2 Root Disk Utilization"
          region = "ap-south-1"

          metrics = [
            [
              "RouteNetLK/EC2",
              "disk_used_percent",
              "InstanceId",
              aws_instance.app_server.id,
              "device",
              "nvme0n1p1",
              "fstype",
              "ext4",
              "path",
              "/"
            ]
          ]

          period  = 300
          stat    = "Average"
          view    = "timeSeries"
          stacked = false
        }
      }
    ]
  })
}
