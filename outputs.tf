output "ses_receipt_rule_sets_id" {
  description = "Map of id values across all ses_receipt_rule_sets, keyed the same as var.ses_receipt_rule_sets"
  value       = { for k, v in aws_ses_receipt_rule_set.ses_receipt_rule_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_receipt_rule_sets_arn" {
  description = "Map of arn values across all ses_receipt_rule_sets, keyed the same as var.ses_receipt_rule_sets"
  value       = { for k, v in aws_ses_receipt_rule_set.ses_receipt_rule_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ses_receipt_rule_sets_region" {
  description = "Map of region values across all ses_receipt_rule_sets, keyed the same as var.ses_receipt_rule_sets"
  value       = { for k, v in aws_ses_receipt_rule_set.ses_receipt_rule_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ses_receipt_rule_sets_rule_set_name" {
  description = "Map of rule_set_name values across all ses_receipt_rule_sets, keyed the same as var.ses_receipt_rule_sets"
  value       = { for k, v in aws_ses_receipt_rule_set.ses_receipt_rule_sets : k => v.rule_set_name if v.rule_set_name != null && length(v.rule_set_name) > 0 }
}

