resource "aws_instance" "my_instance" {
  ami           = "ami-08c40ec9ead489470" # Amazon Linux 2 AMI (update to your region's AMI)
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.my_subnet.id
  security_groups        = [aws_security_group.my_sg.name]
  associate_public_ip_address = true

  tags = {
    Name = "MyInstance"
  }
}
