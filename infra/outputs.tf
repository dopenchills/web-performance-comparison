output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "tfstate_storage_account_name" {
  value = azurerm_storage_account.tfstate.name
}
