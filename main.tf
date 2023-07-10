resource "aws_instance" "instance1" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  subnet_id              = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  availability_zone      = aws_subnet.subnet1.availability_zone
  tags = {
    Name        = "Dev Application Server"
    Environment = "Development"
    can_destroy = "Yes"
    owner       = "Mr Smith"
  }
}

resource "aws_instance" "instance2" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  subnet_id              = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  availability_zone      = aws_subnet.subnet2.availability_zone
  tags = {
    Name        = "SIT Application Server"
    Environment = "Production"
    can_destroy = "No"
    owner       = "Mr Smith"
  }
}
