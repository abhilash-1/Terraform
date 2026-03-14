
resource "aws_instance" "roboshop_instances" {
  count = length(var.instances)
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = merge(var.tags_name,
  {
    Name = var.instances[count.index]
    
  }
  )

}

resource "aws_security_group" "roboshop_instances" {

  ingress  {
    from_port = var.Sg_tags.from_port
    to_port = var.Sg_tags.to_port
    protocol = var.Sg_tags.protocol
    cidr_blocks = var.Sg_tags.cidr_blocks
    ipv6_cidr_blocks = var.Sg_tags.ipv6_cidr_blocks
  }

  egress {
    from_port = var.Sg_tags.from_port
    to_port = var.Sg_tags.to_port
    protocol = var.Sg_tags.protocol
    cidr_blocks = var.Sg_tags.cidr_blocks
    ipv6_cidr_blocks = var.Sg_tags.ipv6_cidr_blocks

  }
}


	

