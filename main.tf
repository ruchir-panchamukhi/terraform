resource "aws_instance" "my_instance" {
  ami           = "ami-08c40ec9ead489470" # Amazon Linux 2 AMI (update to your region's AMI)
  instance_type = "t2.micro"

  associate_public_ip_address = true

  tags = {
    Name = "MyInstance"
  }
}
