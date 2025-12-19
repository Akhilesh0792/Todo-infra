resource "azurerm_resource_group" "Rg" {
  for_each = var.rg_child
  name     = each.value.name
  location = each.value.location
}