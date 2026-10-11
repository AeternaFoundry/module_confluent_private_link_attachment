variable "private_link_attachments" {
  description = <<EOT
Map of private_link_attachments, attributes below
Required:
    - cloud
    - display_name
    - region
    - environment (block):
        - id (required)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    cloud        = string
    display_name = string
    region       = string
    environment = object({
      id = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

