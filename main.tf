module "multiple_linodes_instances" {
  source = "./modules/multiple_linodes"

  for_each = var.instance_types

  instance_group           = each.key
  number_instances         = each.value.count
  instance_image           = each.value.image
  instance_regions         = each.value.regions
  instance_type            = each.value.type
  instance_ubuntu_password = var.instance_ubuntu_password
}

output "all_instances_server_ips" {
  description = "All servers ip addresses"
  value = {
    for key in keys(var.instance_types) :
    key => module.multiple_linodes_instances[key].server_ips
  }
}