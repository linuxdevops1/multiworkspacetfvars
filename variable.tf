variable "aws_region" {
    default = "us-east-1"
    type = string
}

variable "aws_access_key" {
    default = "AKIA2DIYT57KTTWEB7TX"
    type = string
}

variable "aws_secret_key" {
    default = "5Uo+D5HM4TY7oKrRQwaHbA8+IwoCZkxcROHDSsA9"
    type = string
}

variable "vpc_cidr" {
    default = "30.0.0.0/16"
    type = string
}

variable "subnet1_cidr" {
    default = "30.0.1.0/24"
    type = string
}

variable "subnet2_cidr" {
    default = "30.0.2.0/24"
    type = string
}

variable "aws_key_pair" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGjGRcku3sIGlOMUWkDZAKtZPRmZdyXqOCZ+yUn0R69w/ba3VyJkca3rzKIdPxUj8642H85m+Z/qnBkjoKz/6CESUdsz/Jf0cKzo8oEDz6OGca+jzEMVU8csj9SiiD9AQs0X0TlFjK8CxfiDmBQryVL/fom8KkrwgzIaVoJz6brKrVMcfUODaYYXr+HNeRhsqy4APz26UCXmNu5gD8qUj4FdR2R7h7jBHIB2qKs+Hfq5b1MPvaV4dqJAgjoLEdsf6TEeoITNlcNdtJmeS07YrIKmSHj8o7uH1QGMESafVRQeO/AOvDSwhmmM6zPOwj4Tq0bCLytPms36iFa9soutr0M16AJEnRp4Iq9W5bBJBQCngKKmyZgfer0W1LWj1kWDrjtSnsKsdc/w6mtQd7isiIjhEIaY0fQRa0S2FjFjkqfRYHY+UF1GCGkZk8uiY+Tx+o3d0KoJJDl78g68sIOgmi7GBif6yh0KiJEvY/FuFZ2QlW3CPFlenfmDuHip0xjXM= 61475@DESKTOP-KVF8M4B"
    type = string
}

variable "aws_ami" {
    default = "ami-0dc2d3e4c0f9ebd18"
    type = string
}
variable "aws_instance_type" {
    default = "t2.micro"
    type = string
}




