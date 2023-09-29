locals {
  # Naming locals/constants
  name_prefix = lower(var.name_prefix)
  name_suffix = lower(var.name_suffix)

  shared_image_gallery_name = coalesce(var.custom_name, data.azurecaf_name.shared_image_gallery.result)
}
