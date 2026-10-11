resource "azuredevops_workitemtrackingprocess_inherited_state" "workitemtrackingprocess_inherited_states" {
  for_each = var.workitemtrackingprocess_inherited_states

  name              = each.value.name
  process_id        = each.value.process_id
  work_item_type_id = each.value.work_item_type_id
  visible           = each.value.visible

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

