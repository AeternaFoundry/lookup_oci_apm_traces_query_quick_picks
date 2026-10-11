data "oci_apm_traces_query_quick_picks" "apm_traces_query_quick_picks_lookup" {
  for_each = var.apm_traces_query_quick_picks_lookup

  apm_domain_id = each.value.apm_domain_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

