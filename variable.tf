variable "ami_id" {
   default     = "ami-0e472ba40eb589f49"
 }
variable "instance_type" {
   default     = "t2.micro"
 }
variable "key_name" {
   default     = "Jenkins_subhani"
 }
variable "tag_name" {
   default     = "Mymoduledemo"
 }
#alb variabless
variable "subnet_id1" {
   default     = "subnet-003195ab27750ad17"
 }
variable "subnet_id2" {
   default     = "subnet-0862b20f2129dd390"
 }
variable "vpc_id1" {
   default     = "vpc-091c4487f8582f190"
 }
variable "vpc_id2" {
   default     = "vpc-091c4487f8582f190"
 }
variable "sg_id1" {
   default     = "sg-085806b24db8d4c66"
}
variable "sg_id2" {
   default     = "sg-040680dadf657f9ed"
}
variable "tg_arn" {
   default     = "arn:aws:elasticloadbalancing:us-east-1:564693010124:targetgroup/MyTargetgrp/f8426fec7445e957"
}
variable "instance_id1" {
   default     = "i-007a82137567b6242"
}
variable "instance_id2" {
   default     = "i-0789e52830760b3f5"
}
variable "min_size" {
   default    ="2"
}
variable "max_size" {
   default    ="3"
}
variable "availability_zone" {
   default    ="us-east-1b"
}
variable "launch_config" {
   default    ="ami-04505e74c0741db8d"
}
