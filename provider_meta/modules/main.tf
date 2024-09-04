resource "aws_instance" "example" {
  for_each = var.instance_type
  ami             = var.ami
  instance_type   = each.value

  tags = merge(
    var.tags,
    {
      Name = "${var.name}-${each.key}"
    }
  )
}
