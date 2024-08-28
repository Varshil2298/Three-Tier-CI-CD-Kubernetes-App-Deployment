# output "security_group_ids" {
#   value = [for sg in aws_security_group.dynamic_sg : sg.id]
# }

output "private_key_pem" {
  value     = tls_private_key.ec2_key.private_key_pem
  sensitive = true
}