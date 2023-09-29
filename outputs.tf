output "shared_image_gallery" {
  description = "Azure Shared Image Gallery output object"
  value       = azurerm_shared_image_gallery.shared_image_gallery
}

output "id" {
  description = "Azure Shared Image Gallery ID"
  value       = azurerm_shared_image_gallery.shared_image_gallery.id
}

output "name" {
  description = "Azure Shared Image Gallery name"
  value       = azurerm_shared_image_gallery.shared_image_gallery.name
}

output "identity_principal_id" {
  description = "Azure Shared Image Gallery system identity principal ID"
  value       = try(azurerm_shared_image_gallery.shared_image_gallery.identity[0].principal_id, null)
}
