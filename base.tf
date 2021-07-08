provider "aws" {
  access_key = "AKIAXAXYR74L6GSYWRM6"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "appserver" {
  ami           = "ami-0ab4d1e9cf9a1215a"
    instance_type = "t2.micro"
user_data= <<-EOF
             #!/bin/bash
              yum install httpd -y
              echo "hey i am $(hostname -f)" > /var/www/html/index.html
              systemctl  start httpd
              systemctl enable httpd
              
EOF
  tags = {
    Name = "linux-apps-erver"
  
  }
}
