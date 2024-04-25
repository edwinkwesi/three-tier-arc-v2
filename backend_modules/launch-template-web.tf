# Configuring web asg template 

resource "aws_launch_template" "template-web" {
  name          = var.launch-template-web-name
  image_id      = var.image-id
  instance_type = var.instance-type
  key_name      = var.key-name

  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
    device_index                = 0
    security_groups             = [aws_security_group.asg-security-group-web.id]
  }

  user_data = filebase64("user-data.sh")
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = var.web-instance-name

    }
  }
}
