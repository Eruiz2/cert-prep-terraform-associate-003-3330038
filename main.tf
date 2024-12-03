 resource "aws_instance" "ec2-instance1" {
   ami = "ami-0c80e2b6ccb9ad6d1"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
          }
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-038bba9a164eb3dc1"  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}