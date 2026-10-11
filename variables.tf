variable "cloud_project_database_databases" {
  description = <<EOT
Map of cloud_project_database_databases, attributes below
Required:
    - cluster_id
    - engine
    - name
    - service_name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    cluster_id   = string
    engine       = string
    name         = string
    service_name = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

