locals {
  build_vm_name = try(var.buildvm_definition.name, null) != null ? var.buildvm_definition.name : (var.name_prefix != null ? "${var.name_prefix}-build-${var.workload_code}-${lower(var.location)}-${var.instance_suffix}" : "ai-alz-buildvm")
}
