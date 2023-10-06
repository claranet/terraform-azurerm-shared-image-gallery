module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "x.x.x"

  location    = module.azure_region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}

module "run" {
  source  = "claranet/run/azurerm"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name
}

module "shared_image_gallery" {
  source  = "claranet/shared-image-gallery/azurerm"
  version = "x.x.x"

  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name

  client_name = var.client_name
  environment = var.environment
  stack       = var.stack

  shared_images_definitions = [
    {
      name = "Debian11"
      identifier = {
        offer     = "Debian"
        publisher = "Claranet"
        sku       = "11"
      }
      os_type     = "Linux"
      description = "Claranet's Debian 11 custom image."
    },
    {
      name = "Debian12"
      identifier = {
        offer     = "Debian"
        publisher = "Claranet"
        sku       = "12"
      }
      os_type     = "Linux"
      description = "Claranet's Debian 12 custom image."
    },

  ]
  extra_tags = {
    foo = "bar"
  }
}
