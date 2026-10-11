variable "ses_receipt_rule_sets" {
  description = <<EOT
Map of ses_receipt_rule_sets, attributes below
Required:
    - rule_set_name
Optional:
    - region
EOT

  type = map(object({
    rule_set_name = string
    region        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.ses_receipt_rule_sets : (
        length(v.rule_set_name) >= 1 && length(v.rule_set_name) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
}

