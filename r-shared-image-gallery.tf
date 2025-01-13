resource "azurerm_shared_image_gallery" "main" {
  name = local.name

  location            = var.location
  resource_group_name = var.resource_group_name
  description         = var.shared_image_gallery_description

  dynamic "sharing" {
    for_each = var.community_gallery[*]
    content {
      permission = "Community"

      community_gallery {
        eula            = sharing.value.eula
        prefix          = sharing.value.prefix
        publisher_email = sharing.value.publisher_email
        publisher_uri   = sharing.value.publisher_uri
      }
    }
  }

  tags = merge(local.default_tags, var.extra_tags)
}

moved {
  from = azurerm_shared_image_gallery.shared_image_gallery
  to   = azurerm_shared_image_gallery.main
}
