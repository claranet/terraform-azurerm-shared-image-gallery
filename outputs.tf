output "resource" {
  description = "Azure Shared Image Gallery output object."
  value       = azurerm_shared_image_gallery.main
}

output "id" {
  description = "Azure Shared Image Gallery ID."
  value       = azurerm_shared_image_gallery.main.id
}

output "name" {
  description = "Azure Shared Image Gallery name."
  value       = azurerm_shared_image_gallery.main.name
}

output "shared_images_definitions" {
  description = "Azure Shared Images definitions."
  value       = azurerm_shared_image.main
}
