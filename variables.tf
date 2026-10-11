variable "memorydb_parameter_groups" {
  description = <<EOT
Map of memorydb_parameter_groups, attributes below
Required:
    - family
Optional:
    - description
    - name
    - name_prefix
    - region
    - tags
    - tags_all
    - parameter (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    family      = string
    description = optional(string)
    name        = optional(string)
    name_prefix = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    parameter = optional(list(object({
      name  = string
      value = string
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

