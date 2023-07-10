resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-1a"
  tags = {
    Name        = "Dev Application Server"
    Environment = "Development"
    can_destroy = "Yes"
    owner       = "Mr Smith"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1b"
  tags = {
    Name        = "SIT Application Server"
    Environment = "Production"
    can_destroy = "No"
    owner       = "Mr Smith"
  }
}
