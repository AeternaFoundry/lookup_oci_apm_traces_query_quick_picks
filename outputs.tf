output "apm_traces_query_quick_picks_lookup_id" {
  description = "Map of id values across all apm_traces_query_quick_picks_lookup, keyed the same as var.apm_traces_query_quick_picks_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_apm_traces_query_quick_picks.apm_traces_query_quick_picks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_traces_query_quick_picks_lookup_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_traces_query_quick_picks_lookup, keyed the same as var.apm_traces_query_quick_picks_lookup except keys with no apm_domain_id are omitted"
  value       = { for k, v in data.oci_apm_traces_query_quick_picks.apm_traces_query_quick_picks_lookup : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_traces_query_quick_picks_lookup_filter" {
  description = "Map of filter values across all apm_traces_query_quick_picks_lookup, keyed the same as var.apm_traces_query_quick_picks_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_apm_traces_query_quick_picks.apm_traces_query_quick_picks_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "apm_traces_query_quick_picks_lookup_quick_picks" {
  description = "Map of quick_picks values across all apm_traces_query_quick_picks_lookup, keyed the same as var.apm_traces_query_quick_picks_lookup except keys with no quick_picks are omitted"
  value       = { for k, v in data.oci_apm_traces_query_quick_picks.apm_traces_query_quick_picks_lookup : k => v.quick_picks if v.quick_picks != null && length(v.quick_picks) > 0 }
}

