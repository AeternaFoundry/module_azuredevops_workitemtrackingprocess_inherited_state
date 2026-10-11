output "workitemtrackingprocess_inherited_states_id" {
  description = "Map of id values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_inherited_states_name" {
  description = "Map of name values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemtrackingprocess_inherited_states_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states except keys with no process_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_inherited_states_visible" {
  description = "Map of visible values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states except keys with no visible are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.visible if v.visible != null }
}
output "workitemtrackingprocess_inherited_states_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states except keys with no work_item_type_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.work_item_type_id if v.work_item_type_id != null && length(v.work_item_type_id) > 0 }
}

