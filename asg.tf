resource "aws_launch_configuration" "example1" {
        image_id               = "ami-04505e74c0741db8d"
        instance_type          = "t2.micro"
        security_groups        = ["sg-085806b24db8d4c66"]
        key_name               = "Jenkins_subhani"
      }
   
    
    
