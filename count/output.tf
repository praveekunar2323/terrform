output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = module.ec2.instance_ids
}

output "instance_public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = module.ec2.instance_public_ips
}

output "instance_private_ips" {
  description = "The private IPs of the EC2 instances"
  value       = module.ec2.instance_private_ips
}
