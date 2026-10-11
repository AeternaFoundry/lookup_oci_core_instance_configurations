output "core_instance_configurations_lookup_id" {
  description = "Map of id values across all core_instance_configurations_lookup, keyed the same as var.core_instance_configurations_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_instance_configurations.core_instance_configurations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_instance_configurations_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_instance_configurations_lookup, keyed the same as var.core_instance_configurations_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_instance_configurations.core_instance_configurations_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_instance_configurations_lookup_filter" {
  description = "Map of filter values across all core_instance_configurations_lookup, keyed the same as var.core_instance_configurations_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_instance_configurations.core_instance_configurations_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_instance_configurations_lookup_instance_configurations" {
  description = "Map of instance_configurations values across all core_instance_configurations_lookup, keyed the same as var.core_instance_configurations_lookup except keys with no instance_configurations are omitted"
  value       = { for k, v in data.oci_core_instance_configurations.core_instance_configurations_lookup : k => v.instance_configurations if v.instance_configurations != null && length(v.instance_configurations) > 0 }
}

