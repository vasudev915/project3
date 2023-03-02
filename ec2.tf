#creating 1st ec2 instace in public subnet
resource "aws_instance" "dev_ins-1" {
  ami                         = "ami-0dfcb1ef8550277af"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "dev"
  vpc_security_group_ids      = [aws_security_group.dev_sg.id]
  subnet_id                   = aws_subnet.dev_pub_sub.id
  associate_public_ip_address = "true"
  user_data                   = file("userdata.sh")

  tags = {
    Name = "instance_pub1"
  }
}
