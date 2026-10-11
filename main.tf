resource "google_dns_response_policy" "dns_response_policies" {
  for_each = var.dns_response_policies

  response_policy_name = each.value.response_policy_name
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  project              = each.value.project

  dynamic "gke_clusters" {
    for_each = each.value.gke_clusters != null ? each.value.gke_clusters : []
    content {
      gke_cluster_name = gke_clusters.value.gke_cluster_name
    }
  }

  dynamic "networks" {
    for_each = each.value.networks != null ? each.value.networks : []
    content {
      network_url = networks.value.network_url
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

