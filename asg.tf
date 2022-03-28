resource "aws_autoscaling_group" "asgexample" {
  launch_configuration = var.launch_config
  availability_zones   = ["var.availability_zone"]

  min_size = var.min_size
  max_size = var.max_size
  # (...)
}
