# Public Subnet 
resource "aws_subnet" "dev_pub_sub" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "${var.subnet1_cidr}"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "dev_pub_sub"
  }
}
