variable "apm_traces_query_quick_picks_lookup" {
  description = <<EOT
Map of apm_traces_query_quick_picks_lookup, attributes below
Required:
    - apm_domain_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    apm_domain_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

