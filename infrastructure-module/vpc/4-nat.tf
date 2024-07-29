# not needed if not want to connect the private subnet via NAT gateway
resource "aws_eip" "this" {
#   vpc = true
  domain ="vpc"

  tags = {
    Name = "${var.env}-nat"
  }
}

# not needed if not want to connect the private subnet via NAT gateway
resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "${var.env}-nat"
  }

  depends_on = [aws_internet_gateway.this]
}