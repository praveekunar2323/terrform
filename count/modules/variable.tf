variable "c" {
  description = "Number of instances"
  type        = number
  default     = 1
}

variable "ami" {
  description = "AMI ID"
  type        = string
  default     = "ami-0ad21ae1d0696ad58"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "latest2"
}

variable "security_groups" {
  description = "Security groups"
  type        = list(string)
  default     = ["all"]
}

variable "tags" {
  description = "Tags for the instance"
  type        = map(string)
  default     = { Name = "example-instance" }
}

variable "name" {
    description = "value"
    default = "praveen"
    type = string
}
