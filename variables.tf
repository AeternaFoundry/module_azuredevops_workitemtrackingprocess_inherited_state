variable "workitemtrackingprocess_inherited_states" {
  description = <<EOT
Map of workitemtrackingprocess_inherited_states, attributes below
Required:
    - name
    - process_id
    - work_item_type_id
Optional:
    - visible
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name              = string
    process_id        = string
    work_item_type_id = string
    visible           = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_states : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_states : (
        length(trimspace(v.work_item_type_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_states : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

