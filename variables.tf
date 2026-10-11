variable "dns_response_policies" {
  description = <<EOT
Map of dns_response_policies, attributes below
Required:
    - response_policy_name
Optional:
    - deletion_policy
    - description
    - project
    - gke_clusters (block):
        - gke_cluster_name (required)
    - networks (block):
        - network_url (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    response_policy_name = string
    deletion_policy      = optional(string)
    description          = optional(string)
    project              = optional(string)
    gke_clusters = optional(list(object({
      gke_cluster_name = string
    })))
    networks = optional(list(object({
      network_url = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

