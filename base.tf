provider "aws" {
  access_key = "AKIAXAXYR74L22PYYIXT"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_instance" "appserver" {
  ami           = "ami-011c99152163a87ae"
  instance_type = "t2.micro"

  tags = {
    Name = "Linux-app-server"
  }
}
