# terraform-azurerm-azurefirewall-rules-cts
Create Network Rules for an Azure Firewall driven via Consul CTS.
What is important to note is that this module get triggered via Consul CTS which generates .tfvars file which contains the relevant input from Consul service. For an example of the generated .tfvars file refer to test.auto.tfvars file in the test folder.

To test this module on it's own without Consul CTS, you should be able to run terraform init/plan/apply from the test folder.

To ingegrate this module into Consul CTS forflow please refer to https://developer.hashicorp.com/consul/tutorials/network-infrastructure-automation/consul-terraform-sync-module

## Example deployment
The purpose of this module which is still under development is to demonstrate how Consul CTS each time a service is registered in Consul
would open up an Azure firewall port.

```


module "project_out_allow_net_rule" {
  source  = "hrvojep/terraform-azurerm-firewall-net-rule-module-cts/azurerm"

  services              = var.services
  azure_fw_name          = "testfirewall"
  resource_group_name    = "mainnetwork"
  rule_collection_name   = "az-fw-net-rc-dev-test"
  rule_priority          = "150"
  rule_action            = "Allow"

  
}

