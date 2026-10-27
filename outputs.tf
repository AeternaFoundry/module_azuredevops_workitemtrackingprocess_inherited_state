output "workitemtrackingprocess_inherited_states_id" {
  description = "Map of id values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.id }
}
output "workitemtrackingprocess_inherited_states_name" {
  description = "Map of name values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.name }
}
output "workitemtrackingprocess_inherited_states_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.process_id }
}
output "workitemtrackingprocess_inherited_states_visible" {
  description = "Map of visible values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.visible }
}
output "workitemtrackingprocess_inherited_states_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_inherited_states, keyed the same as var.workitemtrackingprocess_inherited_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_state.workitemtrackingprocess_inherited_states : k => v.work_item_type_id }
}

