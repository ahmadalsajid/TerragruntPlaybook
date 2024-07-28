# not needed if not want to connect the private subnet via NAT gateway
resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "staging-nat"
  }
}

# not needed if not want to connect the private subnet via NAT gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_us_east_1a.id

  tags = {
    Name = "staging-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}