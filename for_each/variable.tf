variable "c" {
    description = "value"
  type = string
}
variable "ami" {
    description = "0"
    type = string
}
variable "instance_type" {
    type = map(any)
}
variable "key_name" {
    type = string
}
variable "security_groups" {
    type = list(string)
}
variable "tags" {
    type = map(string)
}
variable "name" {
    type = string
}
