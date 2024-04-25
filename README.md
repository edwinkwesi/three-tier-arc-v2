# 3Tier-arch-deployment
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_alb.alb-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb) | resource |
| [aws_autoscaling_group.asg-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_group.asg-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_policy.web-asg-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_cloudwatch_metric_alarm.web-met-alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_db_instance.rds-db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.subnet-grp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.internet-gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_launch_template.template-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.template-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.alb-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.alb_listener-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.alb_listener-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.target-group-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group.target-group-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_nat_gateway.nat-gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.private-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.pri-rt-asscociation-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pri-rt-asscociation-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-rt-asscociation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-rt-asscociation-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.alb-security-group-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.alb-security-group-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.asg-security-group-app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.asg-security-group-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.db-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.app-subnet1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.app-subnet2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.db-subnet1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.db-subnet2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.web-subnet1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.web-subnet2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb-app-name"></a> [alb-app-name](#input\_alb-app-name) | Name the Load Balancer for the App Tier | `any` | n/a | yes |
| <a name="input_alb-sg-app-name"></a> [alb-sg-app-name](#input\_alb-sg-app-name) | Name for alb security group 1 | `any` | n/a | yes |
| <a name="input_alb-sg-web-name"></a> [alb-sg-web-name](#input\_alb-sg-web-name) | Name for alb security group 1 | `any` | n/a | yes |
| <a name="input_alb-web-name"></a> [alb-web-name](#input\_alb-web-name) | Name the Load Balancer for the Web Tier | `any` | n/a | yes |
| <a name="input_app-db-sg-name"></a> [app-db-sg-name](#input\_app-db-sg-name) | Name for App-DB SEcurity group | `any` | n/a | yes |
| <a name="input_app-instance-name"></a> [app-instance-name](#input\_app-instance-name) | Value for App Instances | `any` | n/a | yes |
| <a name="input_app-subnet1-cidr"></a> [app-subnet1-cidr](#input\_app-subnet1-cidr) | CIDR Block for Application-tier Subnet-1 | `any` | n/a | yes |
| <a name="input_app-subnet1-name"></a> [app-subnet1-name](#input\_app-subnet1-name) | Name for app-tier Subnet-1 | `any` | n/a | yes |
| <a name="input_app-subnet2-cidr"></a> [app-subnet2-cidr](#input\_app-subnet2-cidr) | CIDR Block for Application-tier Subnet-2 | `any` | n/a | yes |
| <a name="input_app-subnet2-name"></a> [app-subnet2-name](#input\_app-subnet2-name) | Name for Application-tier Subnet-2 | `any` | n/a | yes |
| <a name="input_asg-app-name"></a> [asg-app-name](#input\_asg-app-name) | Name the Auto Scaling group in app Tier | `any` | n/a | yes |
| <a name="input_asg-sg-app-name"></a> [asg-sg-app-name](#input\_asg-sg-app-name) | Name for asg security group 1 | `any` | n/a | yes |
| <a name="input_asg-sg-web-name"></a> [asg-sg-web-name](#input\_asg-sg-web-name) | Name for asg security group 1 | `any` | n/a | yes |
| <a name="input_asg-web-name"></a> [asg-web-name](#input\_asg-web-name) | Name the Auto Scaling group in Web Tier | `any` | n/a | yes |
| <a name="input_az-1"></a> [az-1](#input\_az-1) | Availabity Zone 1 | `any` | n/a | yes |
| <a name="input_az-2"></a> [az-2](#input\_az-2) | Availabity Zone 2 | `any` | n/a | yes |
| <a name="input_db-name"></a> [db-name](#input\_db-name) | Name for Database | `any` | n/a | yes |
| <a name="input_db-password"></a> [db-password](#input\_db-password) | Password for db instance | `string` | `""` | no |
| <a name="input_db-sg-name"></a> [db-sg-name](#input\_db-sg-name) | Name for DB Security group | `any` | n/a | yes |
| <a name="input_db-subnet-grp-name"></a> [db-subnet-grp-name](#input\_db-subnet-grp-name) | Name for DB Subnet Group | `any` | n/a | yes |
| <a name="input_db-subnet1-cidr"></a> [db-subnet1-cidr](#input\_db-subnet1-cidr) | CIDR Block for Database-tier Subnet-1 | `any` | n/a | yes |
| <a name="input_db-subnet1-name"></a> [db-subnet1-name](#input\_db-subnet1-name) | Name for Database-tier Subnet-1 | `any` | n/a | yes |
| <a name="input_db-subnet2-cidr"></a> [db-subnet2-cidr](#input\_db-subnet2-cidr) | CIDR Block for Database-tier Subnet-2 | `any` | n/a | yes |
| <a name="input_db-subnet2-name"></a> [db-subnet2-name](#input\_db-subnet2-name) | Name for Database-tier Subnet-2 | `any` | n/a | yes |
| <a name="input_db-username"></a> [db-username](#input\_db-username) | Username for db instance | `string` | `"edadmin"` | no |
| <a name="input_igw-name"></a> [igw-name](#input\_igw-name) | Name for Internet Gateway | `any` | n/a | yes |
| <a name="input_image-id"></a> [image-id](#input\_image-id) | Value for Image-id | `any` | n/a | yes |
| <a name="input_instance-class"></a> [instance-class](#input\_instance-class) | Value for DB instance class | `any` | n/a | yes |
| <a name="input_instance-type"></a> [instance-type](#input\_instance-type) | Value for Instance type | `any` | n/a | yes |
| <a name="input_key-name"></a> [key-name](#input\_key-name) | Value for Key name | `any` | n/a | yes |
| <a name="input_launch-template-app-name"></a> [launch-template-app-name](#input\_launch-template-app-name) | Name for Launch-template-1 | `any` | n/a | yes |
| <a name="input_launch-template-web-name"></a> [launch-template-web-name](#input\_launch-template-web-name) | Name for Launch-template-1 | `any` | n/a | yes |
| <a name="input_nat-gw-name"></a> [nat-gw-name](#input\_nat-gw-name) | Name for NAT Gateway | `any` | n/a | yes |
| <a name="input_private-rt-name"></a> [private-rt-name](#input\_private-rt-name) | Name for Private Route table | `any` | n/a | yes |
| <a name="input_public-rt-name"></a> [public-rt-name](#input\_public-rt-name) | Name for Public Route table | `any` | n/a | yes |
| <a name="input_region-name"></a> [region-name](#input\_region-name) | Region name | `any` | n/a | yes |
| <a name="input_tg-app-name"></a> [tg-app-name](#input\_tg-app-name) | Name for Target group app | `any` | n/a | yes |
| <a name="input_tg-web-name"></a> [tg-web-name](#input\_tg-web-name) | Name for Target group web | `any` | n/a | yes |
| <a name="input_vpc-cidr-block"></a> [vpc-cidr-block](#input\_vpc-cidr-block) | CIDR Block for VPC | `any` | n/a | yes |
| <a name="input_vpc-name"></a> [vpc-name](#input\_vpc-name) | Name for Virtual Private Cloud | `any` | n/a | yes |
| <a name="input_web-instance-name"></a> [web-instance-name](#input\_web-instance-name) | Value for Web Instances | `any` | n/a | yes |
| <a name="input_web-subnet1-cidr"></a> [web-subnet1-cidr](#input\_web-subnet1-cidr) | CIDR Block for Web-tier Subnet-1 | `any` | n/a | yes |
| <a name="input_web-subnet1-name"></a> [web-subnet1-name](#input\_web-subnet1-name) | Name for Web-tier Subnet-1 | `any` | n/a | yes |
| <a name="input_web-subnet2-cidr"></a> [web-subnet2-cidr](#input\_web-subnet2-cidr) | CIDR Block for Web-tier Subnet-2 | `any` | n/a | yes |
| <a name="input_web-subnet2-name"></a> [web-subnet2-name](#input\_web-subnet2-name) | Name for Web-tier Subnet-2 | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_web-server-dns"></a> [web-server-dns](#output\_web-server-dns) | n/a |