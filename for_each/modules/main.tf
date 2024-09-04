resource "aws_instance" "example" {
  for_each = var.instance_type
  ami             = var.ami
  instance_type   = each.value
  key_name        = var.key_name
  security_groups = var.security_groups

  tags = merge(
    var.tags,
    {
      Name = "${var.name}-${each.key}"
    }
  )
}
