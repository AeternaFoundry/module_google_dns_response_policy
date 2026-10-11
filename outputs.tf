output "dns_response_policies_id" {
  description = "Map of id values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no id are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_response_policies_deletion_policy" {
  description = "Map of deletion_policy values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dns_response_policies_description" {
  description = "Map of description values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no description are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dns_response_policies_gke_clusters" {
  description = "Map of gke_clusters values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no gke_clusters are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.gke_clusters if v.gke_clusters != null && length(v.gke_clusters) > 0 }
}
output "dns_response_policies_networks" {
  description = "Map of networks values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no networks are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.networks if v.networks != null && length(v.networks) > 0 }
}
output "dns_response_policies_project" {
  description = "Map of project values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no project are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dns_response_policies_response_policy_name" {
  description = "Map of response_policy_name values across all dns_response_policies, keyed the same as var.dns_response_policies except keys with no response_policy_name are omitted"
  value       = { for k, v in google_dns_response_policy.dns_response_policies : k => v.response_policy_name if v.response_policy_name != null && length(v.response_policy_name) > 0 }
}

