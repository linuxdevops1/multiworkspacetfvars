provider "aws" {
  access_key = "AKIAS37DJ4KEQGFVA6OU"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "appserver" {
  ami           = "ami-0ab4d1e9cf9a1215a"
    instance_type = "t2.micro"

  tags = {
    Name = "linux-apps-erver"
  }
}
