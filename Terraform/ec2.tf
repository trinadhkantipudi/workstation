provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "CentOs" {
  most_recent = true

  filter {
    name   = "AMI-Name"
    values = ["CentOS Linux 7 x86_64 HVM EBS ENA 2002_01-b7ee8a69-ee97-4a49-9e68-afaee216db2e-ami-0042af67f8e4dcc20.4"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # Canonical
}

resource "aws_instance" "practice" {
  ami           = "{ami-01e36b7901e884a10}"
  instance_type = "t2.micro"

  tags = {
    Name = "practice"
  }
}
