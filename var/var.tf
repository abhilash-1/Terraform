variable "ami_id"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "tags_name"{
    type = map
    default =  {
    Name = "Terraform-1"
    user = "System"
    project = "Roboshop"
  }
}

