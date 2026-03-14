
resource "aws_route53_record" "roboshop_instances"{
  for_each = aws_instance.roboshop_instances
  zone_id = "Z07005823OXCP6HOGBEO5"
  name    = "${each.key}_${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
}
