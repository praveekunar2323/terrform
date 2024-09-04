output "instance_ids" {
    description = "instance d"
    value = aws_instance.example[*].id
}

output "instance_public_ips" {
    description = "publiciap"
    value = aws_instance.example[*].public_ip
}

output "instance_private_ips" {
    description = "value"
    value = aws_instance.example[*].private_ip
}