resource "azurerm_storage_account" "storage" {
  name                     = var.website_storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document = "index.html"
    error_404_document = "404.html"
  }
}

resource "azurerm_cdn_profile" "cdn" {
  name                = "${var.website_cdn_endpoint_name}-profile"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "cdn_endpoint" {
  name                = var.website_cdn_endpoint_name
  profile_name        = azurerm_cdn_profile.cdn.name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  is_https_allowed    = true
  origin {
    name      = "storage-origin"
    host_name = azurerm_storage_account.storage.primary_web_host
  }
}