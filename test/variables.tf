variable "services" {
  description = "Consul services monitored by Consul-Terraform-Sync"
  type = map(
    object({
      id        = string
      name      = string
      kind      = string
      address   = string
      port      = number
      meta      = map(string)
      tags      = list(string)
      namespace = string
      status    = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)

      cts_user_defined_meta = map(string)
    })
  )
}


variable "rule_collection_name" {
  description = "(Required) Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created."
  type        = string
  default     = "fw-allow-rule"
}

variable "azure_fw_name" {
  description = "(Required) Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created."
  type        = string
  default     = "testfirewall"
}

variable "resource_group_name" {
  description = "(Required) Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created."
  type        = string
  default     = "mainnetwork-h"
}

variable "rule_priority" {
  description = "(Required) Specifies the priority of the rule collection. Possible values are between 100 - 65000."
  type        = string
  default     = "200"
}

variable "rule_action" {
  description = "(Required) Specifies the action the rule will apply to matching traffic. Possible values are Allow and Deny."
  type        = string
  default     = "Allow"
}

variable "rule" {
  description = "A list of rules to add to the new collection. See Readme.md for an example of how to format this input parameter."
  default = ""
}