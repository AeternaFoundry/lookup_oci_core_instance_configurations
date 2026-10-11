data "oci_core_instance_configurations" "core_instance_configurations_lookup" {
  for_each = var.core_instance_configurations_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

