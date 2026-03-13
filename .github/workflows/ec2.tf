provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c7217cdde317cfec"   # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2-demo"
  }
}