resource "aws_lb" "my-test-lb11" {
  name               = "my-test-lb11"
  internal           = false
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
  subnets            = ["subnet-0862b20f2129dd390","subnet-003195ab27750ad17"]
  #security_groups = "sg-085806b24db8d4c66"
  enable_deletion_protection = false
}
resource "aws_lb_target_group" "my-alb-tg11" {
  health_check {
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200-299"
  }
  name        = "my-alb-tg11"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "vpc-091c4487f8582f190"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "my-tg-attachment1" {
  target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:564693010124:targetgroup/MyTargetgrp/f8426fec7445e957"
  target_id        = "i-007a82137567b6242"
  port             = 80
}
resource "aws_security_group" "security_group" {
  name   = "my-alb-sg11"
  vpc_id = "vpc-091c4487f8582f190"
}
resource "aws_security_group_rule" "http_allow" {
  from_port         = 80
  protocol          = "tcp"
  security_group_id = "sg-085806b24db8d4c66"
  to_port           = 80
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}
