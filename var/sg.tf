
resource "aws_instance" "example_1" {
  count = 5
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = var.tags_name
}

resource "aws_security_group" "example_1" {

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}