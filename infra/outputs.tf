output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "tfstate_storage_account_name" {
  value = azurerm_storage_account.tfstate.name
}

output "website_storage_account_website_url" {
  value = azurerm_storage_account.storage.primary_web_endpoint
}

output "website_cdn_endpoint_url" {
  value = azurerm_cdn_endpoint.cdn_endpoint.fqdn
}
