provider "aws" {
  access_key = "AKIAXAXYR74L6GSYWRM6"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "appserver" {
  ami           = "ami-0ab4d1e9cf9a1215a"
    instance_type = "t2.micro"
    vpc_secutity_group_ids = [aws_secutiry_group.allow_ports.id]
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
resource "aws_security_group" "allow_ports" {
  name = "allow_ports"
  description =  "Allow inbound traffic"
  vpc_id      =  "${aws_default_vpc.default.id}"

  ingress {
    description = "http from VPC"
    from_port = 80
    to_port   = 80
    protocal  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
ingress {
 description = "tomcat port from VPC"
 from_port = 8080
 to_port   = 8080
 protocal  = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
}
  ingress {
   description = "TLS from VPC"
from_port = 443
}       
}
}