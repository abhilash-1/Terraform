locals {
    IP = zipmap (var.instances, aws_instance.roboshop_instances[*].private_ip)
}