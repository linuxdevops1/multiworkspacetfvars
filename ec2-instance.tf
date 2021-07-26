resource "aws_instance" "first-instance" {
  ami = var.aws_ami
  instance_type = var.aws_instance_type
  subnet_id     = aws_subnet.mysubnet-1.id
  vpc_security_group_ids = [aws_security_group.myvpc-sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key.id

  tags = {
    Name = "test-server"
  }
}