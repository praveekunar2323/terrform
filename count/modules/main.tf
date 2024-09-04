resource "aws_instance" "example" {
  count           = var.c
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = var.security_groups

  tags = merge(
    var.tags,
    {
      Name = "${var.name}-${count.index}"
    }
  )
}
