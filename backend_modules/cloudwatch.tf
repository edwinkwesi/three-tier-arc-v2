resource "aws_cloudwatch_metric_alarm" "web-met-alarm" {
  alarm_name          = "web-met-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "SampleCount"
  threshold           = "80"
  alarm_description   = "This metric checks cpu utilization"
  alarm_actions       = [aws_autoscaling_policy.web-asg-policy.arn]
}

resource "aws_autoscaling_policy" "web-asg-policy" {
  name                   = "web-asg-policy"
  scaling_adjustment     = 2
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  policy_type            = "SimpleScaling"
  autoscaling_group_name = aws_autoscaling_group.asg-web.name
}