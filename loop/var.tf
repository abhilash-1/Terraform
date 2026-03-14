variable "ami_id"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "tags_name"{
    type = map
    default =  {
    user = "System"
    project = "Roboshop"
    env = "dev"
  }
}

variable "instance_type"{
  type = string
  default = "t3.micro"
}


variable "Sg_tags" {
  type = object ({
    from_port = number 
    to_port = number 
    protocol = string
    cidr_blocks = list(string)
    ipv6_cidr_blocks = list(string)
  })
  default = {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

variable "instances" {
  type = list
  default = ["Mongodb", "Catalogue", "Cart", "User", "Shipping", "Payment", "Redis", "Rabbitmq", "frontend"]
}

variable "environment" {
  type = string
  default = "Dev"
}

variable "domain_name"{
  type = string
  default = "100pushups.online"
}

variable "fruits"{
  type = list(string)
  default = ["orange", "apple", "mango", "watermelon"]
}