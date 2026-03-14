output "private_ip" {
    description = "Collecting private_IP of all instances"
    value = zipmap(var.instances, aws_instance.roboshop_instances[*].private_ip)
}

output "fruits" {
    value = var.fruits 
}

output "roboshop_instances" {
    value = aws_instance.roboshop_instances
}