#################################################################
# Create New Network Security Rules in an Existing Azure Firewall
#################################################################
resource "azurerm_firewall_network_rule_collection" "fw_net_rule" {
  name                = var.rule_collection_name
  azure_firewall_name = var.azure_fw_name
  resource_group_name = var.resource_group_name
  priority            = var.rule_priority
  action              = var.rule_action

# At least one of source_addresses and source_ip_groups must be specified for a rule.
# At least one of destination_addresses, destination_ip_groups and destination_fqdns must be specified for a rule.
  dynamic "rule" {
    #for_each = var.rule
    #for_each = local.source_ip
    for_each =  var.services
    content {
      name                  = join("-",[rule.value.name, rule.key])                                 # string
      #name                   = null
      #description           = lookup(services.value, "description", null)           # string
      #source_addresses      = [local.source_ip.0]      # list EXAMPLE - ["10.0.0.0/16",]
      source_addresses      = [rule.value.address]      # list EXAMPLE - ["10.0.0.0/16",]
      #source_ip_groups      = lookup(services.value, "source_ip_groups", null)      # list
      destination_ports     = [rule.value.port]   # list EXAMPLE - ["53",]
      # destination_fqdns     = lookup(services.value, "destination_fqdns", null)       # list (DNS Proxy must be enabled to use FQDNs.)
      # destination_ip_groups = lookup(services.value, "destination_ip_groups", null)   # list
      destination_addresses = [rule.value.port]   # list EXAMPLE -  ["8.8.8.8","8.8.4.4",]
      protocols             = ["Any"]                             # list EXAMPLE - ["TCP","UDP",]
    }
  }
}




