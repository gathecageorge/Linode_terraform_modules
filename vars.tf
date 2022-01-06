# access token to linode account
variable "token" {
  description = "access token to linode account"
  type        = string
}

# root password to be set on linodes
variable "instance_ubuntu_password" {
  description = "root password to be set on linodes"
  type        = string
}

# instances/machines to create, different configurations
variable "instance_types" {
  description = "instances/machines to create, different configurations"
  type        = map(any)
}