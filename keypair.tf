resource "aws_key_pair" "key" {
  key_name   = var.keypair_name
  public_key = var.aws_key_pair
  }